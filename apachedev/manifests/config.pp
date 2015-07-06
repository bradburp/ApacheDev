class apachedev::config inherits apachedev {
          
    file { $apachedev::httpd_conf:
      ensure  => file,
      owner   => 'apache',
      group   => 'apache',
      mode    => '0440',
      content => template($apachedev::config_template),
  }
}