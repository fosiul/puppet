class networking {
    # Here you can add stuff to be inhereted by your networking classes
    # We won't bother for this demonstration, but just for show!
}
 
class networking::resolver inherits networking { 
          file { "/etc/resolv.conf": 
              ensure => present,
              source => "puppet:///modules/networking/resolv.conf",
              group   => "root",
              owner => "root",
              mode  => "0755"
          }
}
