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
