#!/usr/bin/env bash

conda_bin="$PT_conda_dir/bin"

eval "$conda_bin/conda create -n $PT_venv_name -y"