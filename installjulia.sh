#!/bin/bash
wget https://julialang-s3.julialang.org/bin/linux/x64/1.9/julia-1.9.4-linux-x86_64.tar.gz
tar zxvf julia-1.9.4-linux-x86_64.tar.gz
export PATH="$PATH:julia-1.9.4/bin"
source ~/.bashrc