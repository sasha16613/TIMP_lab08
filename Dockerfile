FROM ubuntu:18.04

RUN apt update
RUN apt install -yy gcc g++ cmake

COPY . print/
WORKDIR print

RUN cmake -B_build -DCMAKE_INSTALL_PREFIX=_install
RUN cmake --build _build
RUN cmake --build _build --target hello_world

ENV LOG_PATH ./tests/test.txt
VOLUME ./tests

WORKDIR _install/bin
ENTRYPOINT ./demo
