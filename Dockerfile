FROM ubuntu:groovy
LABEL maintainer "starlight5234 <ifist2834@gmail.com>"
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y -qq \
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
    bison && \
    apt-get autoremove -y && \
    apt-get clean autoclean && \
    rm -rf /var/lib/apt/lists/* && git clone --depth 1 https://github.com/kdrag0n/proton-clang ${HOME}/toolchains && rm -rf ${HOME}/toolchains/.git ${HOME}/toolchains/share ${HOME}/toolchains/lib/cmake ${HOME}/toolchains/README.md
RUN git config --global user.email "ifist2834@gmail.com"
RUN git config --global user.name "starlight5234"
