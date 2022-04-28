FROM ubuntu:22.04

RUN apt update
RUN apt install -y gcc g++ cmake

COPY . project/
WORKDIR project

RUN cmake -B_build -DCMAKE_INSTALL_PREFIX=_install
RUN cmake --build _build
RUN cmake --build _build --target install

ENV LOG_PATH ./tests/test.txt
VOLUME ./tests

WORKDIR _install/bin
ENTRYPOINT ./hello_world
