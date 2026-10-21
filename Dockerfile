# syntax=docker/dockerfile:1
#
# rRMSAnalyzer runtime image
#   R 4.6.1 (rocker/r-ver, Ubuntu 24.04 "noble")
#   CRAN/P3M pinned to a dated snapshot (see CRAN_SNAPSHOT)
#   Bioconductor 3.23
#   pandoc -- required at runtime by report_qc()/report_2ome_sites()/report_diff_sites()
#
# Built for linux/amd64 only: the target host is x86_64, and only amd64 gets
# prebuilt P3M/Bioconductor binaries (on arm64 everything compiles from source).

FROM rocker/r-ver:4.6.1

ARG CRAN_SNAPSHOT=2026-10-01

ENV DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    TZ=Etc/UTC

# rocker only pins a dated CRAN snapshot for non-latest R releases. For 4.6.1 the
# default repo is the rolling ".../noble/latest", so two builds months apart would
# resolve different package versions. Pin it explicitly.
ENV CRAN="https://p3m.dev/cran/__linux__/noble/${CRAN_SNAPSHOT}"
RUN /rocker_scripts/setup_R.sh "${CRAN}"

# System libraries:
#   pandoc                          report rendering (rmarkdown + html_document); NOT in rocker/r-ver
#   fontconfig/freetype/harfbuzz/fribidi
#                                   systemfonts -> textshaping -> ragg/svglite (pulled in by kableExtra)
#   libxml2 / libcurl / libssl      xml2, rvest, httr, curl
#   libpng/jpeg/tiff                png, jpeg, ragg, magick-free plotting stack
#   libgit2 / libglpk / gfortran    git2r-style deps, igraph/glpk, compiled R packages
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      pandoc \
      libcurl4-openssl-dev \
      libssl-dev \
      libxml2-dev \
      libfontconfig1-dev \
      libfreetype6-dev \
      libharfbuzz-dev \
      libfribidi-dev \
      libpng-dev \
      libjpeg-dev \
      libtiff5-dev \
      libgit2-dev \
      libglpk-dev \
      gfortran \
      cmake \
      make \
      zlib1g-dev \
      libbz2-dev \
      liblzma-dev \
 && rm -rf /var/lib/apt/lists/*

# pak resolves CRAN + Bioconductor + apt system requirements in a single pass.
RUN Rscript -e 'install.packages("pak", repos = Sys.getenv("CRAN"))' \
 && Rscript -e 'pak::pkg_install("BiocManager")' \
 && Rscript -e 'BiocManager::install(version = "3.23", ask = FALSE, update = FALSE)'

WORKDIR /opt/rRMSAnalyzer
COPY . /opt/rRMSAnalyzer/

# Dependencies first: this layer stays cached when only package sources change.
RUN Rscript -e 'pak::local_install_dev_deps("/opt/rRMSAnalyzer")'

# The package itself. Vignettes are not rebuilt (prebuilt HTML already in inst/doc).
RUN R CMD INSTALL --no-multiarch --no-build-vignettes /opt/rRMSAnalyzer \
 && rm -rf /opt/rRMSAnalyzer

# Build-time sanity checks.
RUN Rscript -e 'library(rRMSAnalyzer); data(ribo_toy, package = "rRMSAnalyzer"); stopifnot(inherits(ribo_toy, "RiboClass")); cat("rRMSAnalyzer", as.character(packageVersion("rRMSAnalyzer")), "OK on R", as.character(getRversion()), "\n")' \
 && pandoc --version | head -n 1

LABEL org.opencontainers.image.title="rRMSAnalyzer" \
      org.opencontainers.image.description="RiboMethSeq 2'-O-methylation analysis (R 4.6.1, Bioconductor 3.23, CRAN snapshot 2026-10-01)" \
      org.opencontainers.image.source="https://github.com/lin-zhongbao/rRMSAnalyzer" \
      org.opencontainers.image.licenses="GPL-3.0-or-later" \
      org.opencontainers.image.version="3.0.0"

WORKDIR /
CMD ["R"]
