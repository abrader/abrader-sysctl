type Abrader::FirewallRule = Struct[
  {
    ensure                          => Enum['present', 'absent'],
    name                            => String,
    Optional[action]                => String,
    Optional[source]                => String,
    Optional[src_range]             => String,
    Optional[destination]           => String,
    Optional[dst_range]             => Boolean,
    Optional[sport]                 => Integer,
    Optional[dport]                 => Integer,
    Optional[port]                  => Array[Integer],
    Optional[dst_type]              => Enum[
      'UNSPEC',
      'UNICAST',
      'LOCAL',
      'BROADCAST',
      'ANYCAST',
      'MULTICAST',
      'BLACKHOLE',
      'UNREACHABLE',
      'PROHIBIT',
      'THROW',
      'NAT',
      'XRESOLVE'
    ],
    Optional[src_type]              => Enum[
      'UNSPEC',
      'UNICAST',
      'LOCAL',
      'BROADCAST',
      'ANYCAST',
      'MULTICAST',
      'BLACKHOLE',
      'UNREACHABLE',
      'PROHIBIT',
      'THROW',
      'NAT',
      'XRESOLVE'
    ],
    Optional[proto]                 => Enum[
      'ip',
      'tcp',
      'udp',
      'icmp',
      'ipv6-icmp',
      'esp',
      'ah',
      'vrrp',
      'igmp',
      'ipencap',
      'ipv4',
      'ipv6',
      'ospf',
      'gre',
      'cbt',
      'sctp',
      'pim',
      'all'
    ],
    Optional[mss]                   => String,
    Optional[tcp_flags]             => Array[Abrader::TcpFlags],
    Optional[chain]                 => Enum[
      'INPUT',
      'FORWARD',
      'OUTPUT',
      'PREROUTING',
      'POSTROUTING'
    ]
    Optional[table]                 => Enum[
      'nat',
      'mangle',
      'filter',
      'raw',
      'rawpost'
    ],
    Optional[jump]                  => Enum[
      'QUEUE',
      'RETURN',
      'DNAT',
      'SNAT',
      'LOG',
      'NFLOG',
      'MASQUERADE',
      'REDIRECT',
      'MARK'
    ],
    Optional[goto]                  => Enum[
      'QUEUE',
      'RETURN',
      'DNAT',
      'SNAT',
      'LOG',
      'MASQUERADE',
      'REDIRECT',
      'MARK'
    ],
    Optional[iniface]               => String,
    Optional[outiface]              => String,
    Optional[tosource]              => String,
    Optional[todest]                => String,
    Optional[toports]               => String,
    Optional[to]                    => String,
    Optional[random]                => String,
    Optional[reject]                => String,
    Optional[log_level]             => String,
    Optional[log_prefix]            => String,
    Optional[log_uid]               => Boolean,
    Optional[nflog_group]           => Integer,
    Optional[nflog_prefix]          => String,
    Optional[nflog_range]           => String,
    Optional[nflog_threshold]       => Integer,
    Optional[icmp]                  => Optional[String,Array[String]],
    Optional[state]                 => Enum[
      'INVALID',
      'ESTABLISHED',
      'NEW',
      'RELATED'
    ],
    Optional[ctstate]               => Enum[
      'INVALID',
      'ESTABLISHED',
      'NEW',
      'RELATED'
    ],
    Optional[conmark]               => String,
    Optional[connlimit_above]       => Integer,
    Optional[connlimit_mask]        => Integer,
    Optional[hop_limit]             => Integer,
    Optional[limit]                 => String,
    Optional[burst]                 => Integer,
    Optional[uid]                   => String,
    Optional[gid]                   => String,
    Optional[match_mark]            => String,
    Optional[set_mark]              => String,
    Optional[clamp_mss_to_pmtu]     => Boolean,
    Optional[set_dscp]              => String,
    Optional[set_dscp_class]        => Enum[
      'af11',
      'af12',
      'af13',
      'af21',
      'af22',
      'af23',
      'af31',
      'af32',
      'af33',
      'af41',
      'af42',
      'af43',
      'cs1',
      'cs2',
      'cs3',
      'cs4',
      'cs5',
      'cs6',
      'cs7',
      'ef'
    ],
    Optional[set_mss]               => String,
    Optional[pkttype]               => Enum[
      'unicast',
      'broadcast',
      'multicast'
    ],
    Optional[isfragment]            => Boolean,
    Optional[recent]                => Enum[
      'set',
      'update',
      'rcheck',
      'remove'
    ],
    Optional[rdest]                 => Boolean,
    Optional[rsource]               => Boolean,
    Optional[rname]                 => String,
    Optional[rseconds]              => String,
    Optional[reap]                  => Boolean,
    Optional[rhitcount]             => String,
    Optional[rttl]                  => Boolean,
    Optional[socket]                => Boolean,
    Optional[ishasmorefrags]        => Boolean,
    Optional[islastfrag]            => Boolean,
    Optional[isfirstfrag]           => Boolean,
    Optional[ipsec_policy]          => Enum[
      'none',
      'ipsec'
    ],
    Optional[ipsec_dir]             => Enum[
      'in',
      'out'
    ],
    Optional[state_mode]            => Enum[
      'nth',
      'random'
    ],
    Optional[stat_every]            => Integer,
    Optional[stat_packet]           => Integer,
    Optional[stat_probability]      => Integer,
    Optional[mask]                  => String,
    Optional[gateway]               => String,
    Optional[ipset]                 => Optional[String, Array[String]],
    Optional[checksum_fill]         => Boolean,
    Optional[mac_source]            => String,
    Optional[physdev_in]            => String,
    Optional[physdev_out]           => String,
    Optional[physdev_is_bridged]    => Boolean,
    Optional[physdev_is_in]         => Boolean,
    Optional[physdev_is_out]        => Boolean,
    Optional[date_start]            => String,
    Optional[date_stop]             => String,
    Optional[time_start]            => String,
    Optional[time_stop]             => String,
    Optional[month_days]            => String,
    Optional[week_days]             => Enum[
      'Mon',
      'Tue',
      'Wed',
      'Thu',
      'Fri',
      'Sat',
      'Sun'
    ],
    Optional[time_contiguous]       => Boolean,
    Optional[kernel_timezone]       => Boolean,
    Optional[clusterip_new]         => Boolean,
    Optional[clusterip_hashmode]    => Enum[
      'sourceip',
      'sourceip-sourceport',
      'sourceip-sourceport-destport'
    ],
    Optional[clusterip_clustermac]  => String,
    Optional[clusterip_total_nodes] => Integer,
    Optional[clusterip_local_node]  => Integer,
    Optional[clusterip_hash_init]   => String,
    Optional[length]                => String,
    Optional[string]                => String,
    Optional[string_algo]           => Enum[
      'bm',
      'kmp'
    ],
    Optional[string_from]           => String,
    Optional[string_to]             => String,
    Optional[queue_num]             => Integer,
    Optional[queue_bypass]          => Boolean,
    Optional[src_cc]                => String,
    Optional[dst_cc]                => String,
    Optional[firewallchain]         => String,
  }
]
