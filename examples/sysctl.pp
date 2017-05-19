class { 'abrader::sysctl' :
  sysctls => [
    {
      ensure  => 'present',
      entry   => 'net.ipv4.ip_forward',
      value   => '0',
      #target  => '/etc/sysctl.d/forwarding.conf',
      comment => 'Enable IP Forwarding',
      #apply   => true,
      #silent  => false,
    }
  ],
}
