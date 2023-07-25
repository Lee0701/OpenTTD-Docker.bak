#!/bin/bash
mkdir /tmp/build && cd /tmp/build && \
  cmake \
  -DOPTION_DEDICATED=ON \
  -DOPTION_INSTALL_FHS=OFF \
  -DCMAKE_BUILD_TYPE=release \
  -DGLOBAL_DIR=/app \
  -DPERSONAL_DIR=/ \
  -DCMAKE_BINARY_DIR=bin \
  -DCMAKE_INSTALL_PREFIX=/app \
  ../src && \
make CMAKE_BUILD_TYPE=release -j"$(nproc)" && \
make install