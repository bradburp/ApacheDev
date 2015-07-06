class apachedev::params {
  
  $package_name = 'httpd'
  $package_ensure = 'present'
  $service_ensure = 'running'
  $service_enable = true
  $httpd_conf = '/etc/httpd/conf/httpd.conf'
  $config_template = 'apachedev/httpd.conf.erb'
}