class apt_update {
  exec { "aptGetUpdate":
    command => "sudo apt-get update",
    path => ["/bin", "/usr/bin"]
  }
}

class othertools {

  package { "git":
    ensure => latest,
    require => Exec["aptGetUpdate"]
  }

  package { "vim-common":
    ensure => latest,
    require => Exec["aptGetUpdate"]
  }

  package { "curl":
    ensure => present,
    require => Exec["aptGetUpdate"]
  }

  package { "wget":
    ensure => present,
    require => Exec["aptGetUpdate"]
  }

  package { "htop":
    ensure => present,
    require => Exec["aptGetUpdate"]
  }

  package { "g++":
    ensure => present,
    require => Exec["aptGetUpdate"]
  }
}

class heroku {
  exec { "install-heroku":
    command => "wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh",
    creates => '/usr/bin/heroku',
    path => ["/bin", "/usr/bin"],
    require => Package['wget']
  }
}

class { 'nodejs':
  version => 'v0.8.9',
  require => Package['g++', 'wget', 'git', 'curl']
}

include apt_update
include othertools
include heroku
include nodejs
