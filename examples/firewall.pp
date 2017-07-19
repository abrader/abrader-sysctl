class { 'abrader::firewall' :
  firewall_rules => [
    {
      name   => '000 accept all icmp',
      proto  => 'icmp',
      action => 'accept'
    },
    {
      name    => '001 accept all to lo interface',
      proto   => 'all',
      iniface => 'lo',
      action  => 'accept'
    },
    {
      name        => '002 reject local traffic not on loopback interface',
      iniface     => '! lo',
      proto       => 'all',
      destination => '127.0.0.1/8',
      action      => 'reject'
    },
    {
      name   => '003 accept related established rules',
      proto  => 'all',
      state  => ['RELATED', 'ESTABLISHED'],
      action => 'accept'
    },
  ],
}
