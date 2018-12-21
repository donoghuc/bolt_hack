#!/usr/bin/env bash

conda_bin="$PT_conda_dir/bin"

eval "$conda_bin/conda install -n $PT_venv_name --file $PT_config_file"