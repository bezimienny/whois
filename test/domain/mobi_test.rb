require 'test/unit'
require File.join(File.dirname(__FILE__), "..", "test_helper")
require File.join(File.dirname(__FILE__), "..", "..", "lib", "whois")

class Whois::Domain::MobiTest < Test::Unit::TestCase

  def test_whois  
    assert_whois_data(EXP_DATA)
    assert Whois::Domain.new("not-reg-1234.mobi").available?
  end

  EXP_DATA = {
    :name => "mtld.mobi",
    :kind => "Mobi",
    :created_on => "2006-05-11",
    :updated_on => "2007-06-29",
    :expires_on => "2008-05-11",
    :database_updated_at => false,
    :registrar_name => "MarkMonitor Inc (292)",
    :whois_server => "whois.dotmobiregistry.net",
    :raw_match => "Domain Name:MTLD.MOBI",
    :status => ['CLIENT DELETE PROHIBITED', 'CLIENT TRANSFER PROHIBITED', 'CLIENT UPDATE PROHIBITED'],
    :name_servers => ['NS7.ZONEEDIT.COM', 'NS3.ZONEEDIT.COM']
  }

end
