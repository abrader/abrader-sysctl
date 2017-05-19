class { 'abrader::sysctl' :
  sysctl => [['net.ipv4.ip_forward', '1', '/etc/sysctl.d/forwarding.conf', 'Enable IP Forwarding', true, false]],
}
