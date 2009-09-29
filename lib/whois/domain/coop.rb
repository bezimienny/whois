class Whois::Domain::Coop < Whois::Domain::Base
  ATTR_MATCH = /^([^:]+):\s{2,}(.*)\r$/
  HOST = "whois.nic.coop"
  responds_to :coop

  ATTR_NAMES = {
    :registrar_name => "Sponsoring registrar",
    :created_on => "Created",
    :updated_on => "Last updated",
    :expires_on => "Expiry Date",
    :status => "Domain Status",
    :name_servers => "Host Name"
  }
  
  def whois_server
    HOST
  end
  
  def available?
    @raw =~ /may be available for purchase/
  end
  
  def register_url
    "http://domains.coop/"
  end
end