node default {
  file {'/root/README':
    ensure => file,
    CONTENT => 'THIS IS A README',
  }
}
