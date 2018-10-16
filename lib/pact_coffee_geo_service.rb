require 'uri'
require 'json'

class PactCoffeeGeoService
  def self.get_lat_lng(query_string)
    parsed_uri = URI.encode("http://nominatim.openstreetmap.org/search/#{query_string}?limit=1&format=json")
    response = HTTParty.get(parsed_uri)
    if response.code == 200
      parsed_body = JSON.parse(response.body)[0]
      if parsed_body
        puts "{post_code: '#{query_string}, 'lat: #{parsed_body['lat']}, lng: #{parsed_body['lon']}},"
        return {lat: parsed_body['lat'].to_f, lng: parsed_body['lon'].to_f}
      else
        puts "NOT FOUND #{query_string}"
      end
    end
  end
end
