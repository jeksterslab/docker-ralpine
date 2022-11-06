FROM alpine

RUN apk add --no-cache parallel \
                       R
# author
MAINTAINER "Ivan Jacob Agaloos Pesigan <learn.jeksterslab@gmail.com>"

# extra metadata
LABEL description="ralpine container."
