# 在 Singularity 3.8.5 上使用 rRMSAnalyzer 镜像

镜像由 GitHub Actions 构建并推送到 GHCR，本地只需要一条
`singularity pull` 把 OCI 镜像转成 `.sif`。

| 项目 | 取值 |
|----|----|
| 镜像 | `ghcr.io/lin-zhongbao/rrmsanalyzer` |
| 推荐 tag | `4.6.1-3.0.0`（R 版本-包版本），另有 `3.0.0`、`sha-<short>`、`latest` |
| 平台 | `linux/amd64` |
| 内容 | R 4.6.1、Bioconductor 3.23、CRAN 快照 2026-10-01、pandoc |

## 1. 先确认环境

``` bash
uname -m                                   # 期望 x86_64
singularity --version                      # 期望 3.8.5
ls -l "$(command -v singularity)"          # 期望带 s 位（setuid 安装）
curl -sI https://ghcr.io/v2/ | head -n 1    # 期望 401 或 200，说明网络可达
```

若是 `--without-suid` 安装，还需要内核允许非特权 user namespace：

``` bash
cat /proc/sys/kernel/unprivileged_userns_clone     # 期望 1
```

## 2. 拉取（不要在本机做，登录节点或有网的机器上执行）

``` bash
export SINGULARITY_CACHEDIR=/scratch/$USER/.s_cache   # 配额小的 home 目录别放缓存
export SINGULARITY_TMPDIR=/scratch/$USER/.s_tmp
export HTTPS_PROXY=http://<proxy>:<port>              # 需要代理时

singularity pull --arch amd64 rRMSAnalyzer-4.6.1.sif \
  docker://ghcr.io/lin-zhongbao/rrmsanalyzer:4.6.1-3.0.0
```

`pull` 过程峰值需要约 2 倍镜像体积的临时空间。

> 首次拉取前请确认 GHCR 上的包是 **Public**。GitHub 新建的容器包默认是
> private，会返回 401。 位置：GitHub → 头像 → Your packages →
> rrmsanalyzer → Package settings → Change visibility → Public。 若保持
> private，需要先登录：`singularity registry login --username <你的用户名> docker://ghcr.io`（密码填
> PAT）。

## 3. 运行

``` bash
singularity exec rRMSAnalyzer-4.6.1.sif \
  Rscript -e 'cat(R.version.string, "\n"); print(packageVersion("rRMSAnalyzer"))'

# 分析脚本：把工作目录 bind 进容器，报告输出到 /work 才可写
singularity exec --bind "$PWD":/work --pwd /work rRMSAnalyzer-4.6.1.sif Rscript analysis.R
```

镜像没有定义 `CMD`/runscript 的默认行为，请使用 `exec`（或
`singularity run` 直接跟脚本名，见 `singularity/rRMSAnalyzer.def` 中的
`%runscript`）。

`$HOME`、当前目录、`/tmp` 会被自动
bind，所以读数据、写结果都不需要额外配置；容器内
`/usr/local/lib/R/site-library` 是只读的，这正是期望行为。

## 4. 生成报告（pandoc 已内置）

``` r

library(rRMSAnalyzer)
data(ribo_toy)
data(human_methylated)
ribo <- remove_ribo_samples(ribo_toy, c("RNA1", "RNA2"))
ribo <- rename_rna(ribo)
ribo <- annotate_site(ribo, human_methylated, "rRNA", "Position", "Nomenclature")
report_2ome_sites(ribo, "human", condition_col = "condition", output_dir = "/work")
```

## 5. 已知问题

| 现象 | 原因 | 处理 |
|----|----|----|
| `unknown manifest class` / `no matching manifest` | 镜像带了 OCI 1.1 attestation，3.8.5 解析不了 | 本仓库 workflow 已设 `provenance: false`、`sbom: false`；如换成别处构建的镜像需注意 |
| `401 Unauthorized` / `denied` | GHCR 包为 private，或 token 无 `read:packages` | 改为 Public，或 `singularity registry login` |
| `pull` 卡住或超时 | 节点无法访问 `ghcr.io`、`pkg-containers.githubusercontent.com`、`objects.githubusercontent.com` | 配 `HTTPS_PROXY`，或在能联网的机器上 pull 后拷 `.sif` |
| `Failed to create user namespace` | 非 setuid 安装且未开 userns | 让管理员开启 `unprivileged_userns_clone` |
| 报告写入失败 | 输出目录只读 | 用 `--bind` 挂一个可写目录并把 `output_dir` 指过去 |
| 磁盘配额不足 | 缓存落在 `$HOME` | 设置 `SINGULARITY_CACHEDIR` / `SINGULARITY_TMPDIR` |

## 6. 版本更新

改了源码后 push 到 `main`，Actions 会重新构建并推送 `4.6.1-3.0.0` /
`sha-<short>` / `latest`。本地重新 `singularity pull`
即可（同名文件会被覆盖）。要换 R 版本请同时修改 `Dockerfile` 的
`FROM`、`CRAN_SNAPSHOT`、workflow 里的 `R_VERSION`，以及 Bioconductor
版本（R 4.6 → 3.23）。
