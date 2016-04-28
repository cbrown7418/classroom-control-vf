#
class profile::wordpress {

  # MANAGE apache
  class { 'apache':
    docroot => '/var/wordpress'
  }

}
