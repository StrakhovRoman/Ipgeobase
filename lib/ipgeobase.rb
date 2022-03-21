# frozen_string_literal: true

require_relative "ipgeobase/version"
require "addressable/uri"
require "net/http"
require "happymapper"

# Main module
module Ipgeobase
  class Error < StandardError; end

  class MetaData
    include HappyMapper

    tag "query"
    element :city, String
    element :country, String
    element :countryCode, String
    element :lat, Float
    element :lon, Float
  end

  def self.lookup(ip)
    uri = Addressable::URI.parse("http://ip-api.com/xml/#{ip}")
    response = Net::HTTP.get_response(uri.normalize)
    MetaData.parse(response.body, single: true)
  end
end
