FROM ghcr.io/actions/actions-runner:latest

USER root

RUN apt update -y && apt upgrade -y && apt install -y --no-install-recommends \
    nodejs

USER runner
