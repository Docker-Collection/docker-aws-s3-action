FROM ghcr.io/docker-collection/aws-cli-action:latest

COPY entrypoint.sh entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]