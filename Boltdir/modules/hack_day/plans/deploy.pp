plan hack_day::deploy(
  TargetSpec $nodes
) {
  
  upload_file('/home/cas/working_dir/bolt_hack/app', '/root/app', $nodes)

  upload_file('/home/cas/working_dir/bolt_hack/config', '/root/config', $nodes)

  run_task('hack_day::install_to_venv', $nodes, conda_dir=>"/root/anaconda", venv_name=>"test", config_file=>"/root/config/requirements.txt")
  run_task('hack_day::start_app', $nodes, conda_dir=>"/root/anaconda", venv_name=>"test")
}