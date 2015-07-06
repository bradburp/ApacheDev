# Class: apachedev
#
# This module manages apachedev
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class apachedev (

    $package_name    = $apachedev::params::package_name,
    $package_ensure  = $apachedev::params::package_ensure,
    $service_ensure  = $apachedev::params::service_ensure,
    $service_enable  = $apachedev::params::service_enable,
    $httpd_conf      = $apachedev::params::httpd_conf,
    $config_template = $apachedev::params::config_template,
    
    ) inherits apachedev::params {
      
      validate_string($package_name)
      validate_string($package_ensure)
      validate_string($service_ensure)
      validate_bool($service_enable)
      validate_string($httpd_conf)
      validate_string($config_template)
      
      anchor { 'apachedev::begin': } ->
      class { '::apachedev::install': } ->
      class { '::apachedev::config': } ->
      class { '::apachedev::service': } ->
      anchor { 'apachedev::end': }
}
          
