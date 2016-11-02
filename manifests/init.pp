class vrosudo {
  user { 'vro':
    ensure   => present,
    comment  => 'VRO Plugin User',
    shell    => '/bin/bash',
    password => pw_hash('buckle fiat flawed', 'SHA-512', 'mysalt'),
  }

  file { '/etc/sudoers.d/vro':
    ensure  => file,
    mode    => '0440',
    owner   => 'root',
    group   => 'root',
    content => epp('/vrosudo/vro.epp'),
  }
}
