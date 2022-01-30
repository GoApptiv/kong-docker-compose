ARG KONG_BASE=kong:latest

FROM ${KONG_BASE} AS build

USER root
RUN apk update && apk add git unzip luarocks

COPY ./plugins/opaque-jwt opt/kong/custom-plugins/opaque-jwt

WORKDIR /opt/kong/custom-plugins/opaque-jwt

RUN luarocks make

USER kong


