# This is a custom Puppet type for managing repos provided by RHN Satellite.

Puppet::Type.newtype(:satelliterepo) do
  @doc = "Manage a repo provided by RHN Satellite."

  ensurable

  newparam(:channel, :namevar => true) do
    desc "The name of the channel to subscribe to."
  end

  newparam(:server_url) do
    desc "Usually set through the rhnsatellite class. " +
      "The XMLRPC interface of your Spacewalk/Satellite/RHN server, " +
      "for example https://rhn.redhat.com/XMLRPC ."
    isrequired
  end

  newparam(:username) do
    desc "Usually set through the rhnsatellite class. " +
      "A valid username for the Satellite server."
    isrequired
  end

  newparam(:password) do
    desc "Usually set through the rhnsatellite class. " +
      "A valid password for the Satellite server."
    isrequired
  end

  # Ensure we are configured first
  autorequire(:class) do
    ['rhnsatellite']
  end
end
