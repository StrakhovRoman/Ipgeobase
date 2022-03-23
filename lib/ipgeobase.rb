# frozen_string_literal: true

require_relative "ipgeobase/version"
require_relative "ipgeobase/metadata"
require_relative "ipgeobase/api"
require "addressable/uri"
require "net/http"

# Main module
module Ipgeobase
  def self.lookup(ip)
    uri = Addressable::URI.parse("#{BASE_PATH}#{ip}")
    response = Net::HTTP.get_response(uri.normalize)
    MetaData.parse(response.body, single: true)
  end
end
