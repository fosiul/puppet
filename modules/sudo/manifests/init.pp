# /etc/puppet/modules/sudo/manifests/init.pp

class sudo {
    file { "/tmp/sudoers":
        owner => 'root',
        group => 'root',
        mode  => '0440',
    }
}
