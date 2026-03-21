#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

export CMAKE_ARGS=${CMAKE_ARGS//-DCMAKE_INSTALL_LIBDIR=lib/-DCMAKE_INSTALL_LIBDIR=plugins}

cmake -S ${SRC_DIR} -B build -G "Ninja" \
    -D CMAKE_POLICY_VERSION_MINIMUM=3.5 \
    -D CMAKE_BUILD_TYPE=Release \
    -D BUILD_AS_PLUGIN:BOOL=ON \
    ${CMAKE_ARGS}

cmake --build build
cmake --install build
