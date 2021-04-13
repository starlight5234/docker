FROM ubuntu:groovy
LABEL maintainer "starlight5234 <ifist2834@gmail.com>"
RUN apt-get update -qq \
    && apt-get install --no-install-recommends -y -qq \
    ca-certificates \
    cpio \
    git \
    make \
    bc \
    zip \ 
    curl \
    gcc \
    libc6-dev \
    python3-minimal \ 
    libssl-dev \ 
    flex \ 
    bison
# Cleaup
RUN apt-get autoremove -y \
    && apt-get clean autoclean \
    && apt-get -y purge azure-cli ghc* zulu* llvm* firefox google* dotnet* openjdk* mysql* php* \
    && rm -rf /var/cache/apt/* /var/lib/apt/lists/* /usr/share/dotnet /etc/mysql /etc/php /etc/apt/sources.list.d /tmp/*
# Setup clang
RUN git clone --depth=1 https://github.com/kdrag0n/proton-clang ${HOME}/toolchains \
    && rm -rf ${HOME}/toolchains/.git ${HOME}/toolchains/share ${HOME}/toolchains/lib/cmake ${HOME}/toolchains/README.md
RUN git config --global user.email "ifist2834@gmail.com"
RUN git config --global user.name "starlight5234"
