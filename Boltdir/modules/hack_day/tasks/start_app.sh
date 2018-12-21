#!/usr/bin/env bash

conda_bin="$PT_conda_dir/bin"

eval "source $conda_bin/activate $PT_venv_name"

eval "python /root/app/flask_app.py &"