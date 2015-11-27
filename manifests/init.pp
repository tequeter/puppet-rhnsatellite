# == Class: rhnsatellite
#
# This module contains a provider and type to manage RHN Satellite channels.
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
# [*ssl_cert*]
#   Name of the SSL certificate your RHN Satellite server will present. Place
#   this file in the 'files' directory of this module with the .pem extension.
#
# === Examples
#
#  class { 'rhnsatellite':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ]
#  }
#
# === Authors
#
# Andy Sykes <andy@tinycat.co.uk>
#
# === Copyright
#
# Copyright 2012 Andy Sykes, unless otherwise noted.
#
class rhnsatellite(
  $server_url  = "https://rhn.redhat.com/XMLRPC",
  $username = "orgadmin",
  $password = "password"
) {

  # Passing parameters as resource defaults in dynamic scope may stop working
  # in a future Puppet release. For now it's still better than writing the
  # password in a file.
  Satelliterepo {
    server_url => $server_url,
    username   => $username,
    password   => $password,
  }

}
