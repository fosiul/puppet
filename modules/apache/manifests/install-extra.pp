class apache::install-extra {


package { "make":
name => $operatingsystem ?
{
/(Red Hat|CentOS|Fedora|Ubuntu|Debian)/ => "make",
Solaris => "make",
},
ensure => installed,
}




}
