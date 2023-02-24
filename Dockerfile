FROM ghcr.io/docker-collection/aws-cli

COPY entrypoint.sh entrypoint.sh

ENTRYPOINT [ "sh", "/entrypoint.sh" ]