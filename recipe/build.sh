#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

cmake -S ${SRC_DIR} -B build -G "Ninja" \
    -D CMAKE_POLICY_VERSION_MINIMUM=3.5 \
    -D CMAKE_BUILD_TYPE=Release \
    -D CMAKE_INSTALL_LIBDIR:FILEPATH=$PREFIX/plugins \
    -D BUILD_AS_PLUGIN:BOOL=ON \
    ${CMAKE_ARGS}

cmake --build build
cmake --install build
