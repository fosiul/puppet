class ntp::install {
package { "ntp":
name => $operatingsystem ?
{
/(Red Hat|CentOS|Fedora|Ubuntu|Debian)/ => "ntp",
Solaris => "ntp",
},
ensure => installed,
}


}
