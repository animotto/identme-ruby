# frozen_string_literal: true

require 'resolv'

##
# Idents your public IP address
class IdentMe
  OPENDNS_RESOLVER = 'resolver1.opendns.com'
  OPENDNS_MYIP = 'myip.opendns.com'

  def self.ident
    data = {}
    resolver = Resolv::DNS.new(nameserver: OPENDNS_RESOLVER)
    data[:ip] = resolver.getaddress(OPENDNS_MYIP).to_s
    data[:name] = resolver.getname(data[:ip]).to_s rescue nil
    data
  end
end
