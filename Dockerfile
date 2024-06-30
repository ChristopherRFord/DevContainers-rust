FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    gdb \
    cargo \
    git \
    wget \
    unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /workspace/.vscode
RUN mkdir -p /workspace/test_bench

COPY Content/vscode /workspace/.vscode/
COPY Content/test_bench /workspace/test_bench

WORKDIR /workspace
SHELL ["/bin/bash", "-c"]
