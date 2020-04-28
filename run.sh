#!/usr/bin/env bash

set -euxo pipefail

for exe in stack stack2 stack21 stack1
do
    git clean -fdx
    echo $exe
    $exe --version
    $exe build || true
done
