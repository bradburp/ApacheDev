class apachedev::service inherits apachedev {

    service { 'httpd':
         ensure => $apachedev::service_ensure,
         enable => $apachedev::service_enable,
    }   
}