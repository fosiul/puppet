class apache::install-gcc {


package { "gcc":
name => $operatingsystem ?
{
/(Red Hat|CentOS|Fedora|Ubuntu|Debian)/ => "gcc",
Solaris => "gcc",
},
ensure => installed,
}




}
