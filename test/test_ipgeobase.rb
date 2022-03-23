# frozen_string_literal: true

require_relative "test_helper"

class TestIpgeobase < Minitest::Test
  def setup # rubocop:disable Metrics/MethodLength
    @expected_fields = {
      city: "Vyborg",
      country: "Russia",
      countryCode: "RU",
      lat: 60.7142,
      lon: 28.745
    }

    @url = "www.example.com"
    api_base_path = Ipgeobase::BASE_PATH
    api_response = File.open("./test/fixtures/files/response.xml", "r")

    stub_request(
      :get, "#{api_base_path}#{@url}"
    ).to_return(status: 200, body: api_response, headers: {})
  end

  def test_lookup
    ip_meta = Ipgeobase.lookup(@url)
    assert_equal(@expected_fields[:city], ip_meta.city)
    assert_equal(@expected_fields[:country], ip_meta.country)
    assert_equal(@expected_fields[:countryCode], ip_meta.countryCode)
    assert_equal(@expected_fields[:lat], ip_meta.lat)
    assert_equal(@expected_fields[:lon], ip_meta.lon)
  end
end
