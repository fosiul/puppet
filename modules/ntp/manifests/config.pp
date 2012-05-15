class ntp::config {
	file { "/etc/ntp.conf":
	ensure => present,
	owner => 'root',
	group => 'root',
	mode => 0600,
	source => "puppet:///modules/ntp/ntp.conf",
	require => Class["ntp::install"],
	notify => Class["ntp::service"],
	}
}

