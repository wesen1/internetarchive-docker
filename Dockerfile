FROM debian:buster-slim
RUN apt-get update && \
    apt-get install -y python && \
    apt-get install -y curl && \
    mkdir /internetarchive && \
    cd /internetarchive && \
    curl -LOs https://archive.org/download/ia-pex/ia && \
    chmod +x ia && \
    apt-get autoremove -y curl
WORKDIR /internetarchive
ENTRYPOINT [ "./ia" ]
