class apache::install-libssl-dev {


package { "libssl-dev":
name => $operatingsystem ?
{
/(Red Hat|CentOS|Fedora|Ubuntu|Debian)/ => "libssl-dev",
Solaris => "libssl-dev",
},
ensure => installed,
}





}
