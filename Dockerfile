FROM quay.io/vektorcloud/base:3.12

ENV SPEEDER_VERSION=20180806.0

RUN wget https://github.com/wangyu-/UDPspeeder/releases/download/${SPEEDER_VERSION}/speederv2_linux.tar.gz && \
    tar xvf speederv2_linux.tar.gz

FROM scratch
COPY --from=0 /speederv2_amd64 /speederv2
ENTRYPOINT ["/speederv2"]
