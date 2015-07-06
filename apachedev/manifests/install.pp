class apachedev::install inherits apachedev {

    package { $apachedev::package_name:
      ensure => $apachedev::package_ensure,
    }
}