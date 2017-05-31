# An example wrapper class to show how to handle variable entries
class abrader::firewall (
  Array[Abrader::FirewallRule] $firewall_rules,
) {

  $firewall_rules.each |Hash $firewall_rule| {
    firewall { $firewall_rule['name'] :
      ensure   => $firewall_rule['ensure'],
      dport    => $firewall_rule['dport'],
      proto    => $firewall_rule['proto'],
      chain    => $firewall_rule['chain'],
      action   => $firewall_rule['action'],
      provider => $firewall_rule['provider'],
    }
  }

}
