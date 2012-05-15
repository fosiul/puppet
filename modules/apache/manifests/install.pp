class apache::install {

$version = "2.2.22"
#Ensure that the Directory exists
file { "/root/download/src": ensure => directory }

file { "/root/download/src/httpd-$version.tar.gz":
		source => "puppet:///modules/apache/httpd-$version.tar.gz",
		alias => "httpd-source-gz",
		before => Exec["untar-httpd-source-gz"]
                  }

#Untar files

exec {

	"tar":
        command => "tar  xvzf httpd-$version.tar.gz",
	cwd  => "/root/download/src",
	creates => "/root/download/src/httpd-$version",
	alias => "untar-httpd-source-gz",
	subscribe => File["httpd-source-gz"],
	path    => "/usr/local/bin/:/bin/"	
	}


exec { "/root/download/src/httpd-$version/configure  --prefix=/usr/local/apache --with-included-apr --with-php --with-mysql --with-susexec --disable-info --with-mpm=prefork --enable-so --enable-cgi --enable-rewrite --enable-ssl --enable-mime-magic --enable-unique-id --enable-mods-shared='proxy cache ssl all'":
                cwd     => "/root/download/src/httpd-$version",
                require => Exec[untar-httpd-source-gz],
                creates => "/root/download/src/httpd-$version/config.h",
		alias => "configure",
	# path  => "/usr/local/bin/:/bin/"

                      }


# installation 

exec { "make && make install":
	#command => "make && make install",
        cwd => "/root/download/src/httpd-$version",
        require => Exec[configure],
	
	path  => "/usr/bin/:/bin/"
	

	}	



}
