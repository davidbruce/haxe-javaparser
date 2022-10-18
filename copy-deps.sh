#!/bin/bash

mvn dependency:copy-dependencies -DoutputDirectory=temp

rm -rf src/javaparser/_internal/jars

mkdir -p src/javaparser/_internal/jars/common

mv temp/* src/javaparser/_internal/jars/common

rmdir temp
