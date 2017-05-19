# An example wrapper class to show how to handle variable entries
class abrader::sysctl (
  Array[Abrader::Sysctl] $sysctls,
) {

  $sysctls.each |Hash $sysctl| {
    sysctl { $sysctl['entry'] :
      ensure  => $sysctl['ensure'],
      value   => $sysctl['value'],
      comment => $sysctl['comment'],
      apply   => $sysctl['apply'],
      silent  => $sysctl['silent'],
    }
  }

}
