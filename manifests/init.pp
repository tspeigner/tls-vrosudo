class vrosudo {
  user { 'vro':
    ensure   => present,
    gid      => '600',
    uid      => '600',
    comment  => 'VRO Plugin User',
    shell    => '/bin/bash',
    password => pw_hash('buckle fiat flawed', 'SHA-512', 'mysalt'),
  }

  file { '/etc/sudoers.d/vro':
    ensure => file,
    mode   => '0440',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/vrosudo/vro'
  }
}
