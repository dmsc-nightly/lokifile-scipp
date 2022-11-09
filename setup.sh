#!/bin/bash

git clone https://github.com/ess-dmsc/kafka-to-nexus.git
cd kafka-to-nexus/
conan config set settings.compiler=gcc
conan config set settings.compiler.libcxx=libstdc++11
conan config set settings.compiler.version=11
conan config install http://github.com/ess-dmsc/conan-configuration.git
mkdir _build
cd _build
conan install .. --build=missing
