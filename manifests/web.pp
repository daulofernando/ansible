exec{ "update":
  command => "/usr/bin/apt-get update"
}

package { ["nginx"]:
  ensure => installed,
  require => Exec["update"]
}
