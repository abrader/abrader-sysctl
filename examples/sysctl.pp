class { 'abrader::sysctl' :
  sysctls => [
    {
      ensure  => 'present',
      entry   => 'net.ipv4.ip_forward',
      value   => '0',
      target  => '/etc/sysctl.d/forwarding.conf',
      comment => 'by A. Brader',
      apply   => false
    },
    {
      ensure  => 'present',
      entry   => 'net.ipv4.tcp_synack_retries',
      value   => '5',
      comment => 'by S. Admin',
      apply   => true,
      silent  => false
    }
  ],
}
