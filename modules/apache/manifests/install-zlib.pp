class apache::install-zlib {


package { "zlib1g-dev":
name => $operatingsystem ?
{
/(Red Hat|CentOS|Fedora|Ubuntu|Debian)/ => "zlib1g-dev",
Solaris => "zlib1g-dev",
},
ensure => installed,
}





}
