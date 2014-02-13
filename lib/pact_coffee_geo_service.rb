require 'uri'
require 'json'

class PactCoffeeGeoService
  def self.get_lat_lng(query_string)
    parsed_uri = URI.encode("http://nominatim.openstreetmap.org/search?q=#{query_string}&limit=1&format=json")
    response = HTTParty.get(parsed_uri)
    if response.code == 200
      parsed_body = JSON.parse(response.body)[0]
      return {lat: parsed_body['lat'].to_f, lng: parsed_body['lon'].to_f}
    end
  end
end