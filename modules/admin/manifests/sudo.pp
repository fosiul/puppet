class admin::sudo  {
          file { "/tmp/sudo.conf":
              ensure => present,
              source => "puppet:///modules/admin/sudo.conf",
              group   => "root",
              owner => "root",
              mode  => "0755"
          }
}
