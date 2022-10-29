#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No input program supplied."
    exit 1
fi

if [ ! -d "jdk/build/linux-x86_64-server-release/jdk/bin" ]; then
    echo "Build JDK before executing this script."
    exit 2
fi

rm -rf build/
mkdir -p build/
./jdk/build/linux-x86_64-server-release/jdk/bin/javac -d build/ $1

if [ $? -ne 0 ]; then
    echo "ERROR: Compilation of input program failed."
    exit 3
fi

NAME=$(basename ${1})
./jdk/build/linux-x86_64-server-release/jdk/bin/java -cp build/ ${NAME%%.*}

if [ $? -ne 0 ]; then
    echo "ERROR: Input program runtime error."
    exit 4
fi


