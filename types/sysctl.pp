# type Abrader::Sysctl = Tuple[Abrader::Sysctl::Entry, Abrader::Sysctl::Value, Abrader::Sysctl::Target, Abrader::Sysctl::Comment, Abrader::Sysctl::Apply, Abrader::Sysctl::Silent]

type Abrader::Sysctl = Struct[
  {
    ensure            => Enum['present', 'absent'],
    entry             => String,
    value             => String,
    Optional[target]  => String,
    Optional[comment] => String,
    Optional[apply]   => Boolean,
    Optional[silent]  => Boolean
  }
]
