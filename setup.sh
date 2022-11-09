#!/bin/bash

git clone https://github.com/ess-dmsc/kafka-to-nexus.git
cd kafka-to-nexus/
conan config install http://github.com/ess-dmsc/conan-configuration.git
mkdir _build
cd _build
conan install .. --build=missing
