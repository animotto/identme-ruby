require "open-uri"
require "resolv"

class IdentMe
  IDENTME_URI = "https://ident.me"

  def self.ident
    data = Hash.new
    data[:ip] = URI.open(IDENTME_URI).read
    data[:name] = Resolv.getname(data[:ip]) rescue nil
    return data
  end
end

