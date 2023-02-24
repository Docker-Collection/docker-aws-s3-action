FROM python:3.11.2-alpine

COPY entrypoint.sh entrypoint.sh

RUN apk add --update && \
    pip install --no-cache-dir awscli

ENTRYPOINT [ "/entrypoint.sh" ]