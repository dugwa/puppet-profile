class profile::apache(
  Boolean $default_vhost = false,
  Integer $port = 80,
  String $docroot = '/var/www/test',
  String $hostname = $facts['fqdn']
) {
  class { '::apache':
    default_vhost => $default_vhost,
  }

  ::apache::vhost { $hostname:
    port => $port,
    docroot => $docroot,
  }

}
