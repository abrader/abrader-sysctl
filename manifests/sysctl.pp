# An example wrapper class to show
class abrader::sysctl (
  Array[Abrader::Sysctl] $sysctl,
) {

  $sysctl.each |Abrader::Sysctl::Entry $entry, Abrader::Sysctl::Value $value, Abrader::Sysctl::Target $target, Abrader::Sysctl::Comment $comment, Abrader::Sysctl::Apply $apply, Abrader::Sysctl::Silent $silent | {
    sysctl { $entry :
      ensure  => present,
      value   => $value,
      comment => $comment,
      apply   => $apply,
      silent  => $silent,
    }
  }

}
