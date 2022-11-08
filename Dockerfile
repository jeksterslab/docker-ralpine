FROM alpine

RUN apk add --no-cache curl     \
                       openblas \
                       parallel \
                       R

# quarto
RUN export QUARTO_VERSION=$(curl -s "https://api.github.com/repos/quarto-dev/quarto-cli/releases/latest" | grep '"tag_name":' | sed -E 's/.*"v*([^"]+)".*/\1/') ;\
        curl -Lo quarto.tar.gz "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz" ;\
        mkdir -p /usr/local ; \
        tar -zxvf quarto.tar.gz -C /usr/local --strip-components=1 ;\
        rm quarto.tar.gz

# author
MAINTAINER "Ivan Jacob Agaloos Pesigan <learn.jeksterslab@gmail.com>"

# extra metadata
LABEL description="ralpine container."
