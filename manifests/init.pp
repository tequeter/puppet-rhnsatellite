# == Class: rhnsatellite
#
# This class sets defaults (server, username, and password) for individual
# rhnsatellite::channel resources.
#
# === Parameters
#
# [*server_url*]
#   URL to the XMLRPC endpoint of the Satellite server. Normally:
#   https://rhn.your.org/XMLRPC
#
# [*username*]
#   Username of a RHN Satellite administrator; required so the module can
#   change a client machine's subscriptions.
#
# [*password*]
#   Password for the above user.
#
# === Examples
#
#  class { 'rhnsatellite':
#    server_url => 'https://rhn.your.org/XMLRPC',
#    username   => 'bob',
#    password   => 'secret',
#  }
#
#  # Later
#  rhnsatellite::channel { 'rhel-x86_64-server-optional-7':
#    ensure => present,
#  }
#
# === Authors
#
# Andy Sykes <andy@tinycat.co.uk>
# Thomas Equeter
#
# === Copyright
#
# Copyright 2012 Andy Sykes, unless otherwise noted.
#
class rhnsatellite(
  $server_url = "https://rhn.redhat.com/XMLRPC",
  $username,
  $password
) {
}
