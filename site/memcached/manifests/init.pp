#
class memcached{
#PACKAGE
package{'memcached':
ensure => present,
}

# FILE 
file { '/etc/sysconfig/memcached':
 ensure => file,
 owner => 'root',
 group => 'root',
 mode  => '0644',
 source => 'puppet:///modules/memcached/memcached
 require => 'Package['memcached']
}

#SERVICE
service { 'memcached':
 ensure => running,
 enabled => true,
 subscribe => ['/etc/sysconfig/memchached'],
}

} 
