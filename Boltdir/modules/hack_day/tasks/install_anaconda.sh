#!/usr/bin/env bash

curl -LO https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh >&2
bash Miniconda3-latest-Linux-x86_64.sh -p $PT_conda_dir -b
rm Miniconda3-latest-Linux-x86_64.sh
eval "$PT_conda_dir/bin/python --version"
