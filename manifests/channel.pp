# == Type: rhnsatellite::channel
#
# Ensures that a named channel is enabled for this server. See rhnsatellite for
# an example.
#
# === Parameters
#
# [*channel*] Namevar. Name of the channel to enable or disable, for example
# "rhel-x86_64-server-optional-7".
#
# [*ensure*] absent/present.
#
# [*server_url*]
#
# [*username*]
#
# [*password*]
#
define rhnsatellite::channel (
  $channel    = $name,
  $ensure,
  $server_url = $rhnsatellite::server_url,
  $username   = $rhnsatellite::username,
  $password   = $rhnsatellite::password
) {
  if !defined('$server_url') or !defined('$username') or !defined('$password') {
    fail('Missing one of server_url, username, or password parameters to rhnsatellite::channel. They must be specified directly or through an earlier rhnsatellite class declaration.')
  }

  satelliterepo { $channel:
    ensure     => $ensure,
    server_url => $server_url,
    username   => $username,
    password   => $password,
  }
}
