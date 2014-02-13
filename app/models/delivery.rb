require 'pact_coffee_geo_service'

class Delivery < ActiveRecord::Base

  validates_numericality_of :lat, :lng, allow_blank: true

  #Run before-save callback to set lat and lng
  before_save :set_lat_lng_remotely

  # Actually this method should return address as one-line string built from
  # address parameters like House number, street, post-code but in this example
  # I use just post_code so it's basically just proxy getter for post_code
  def get_address
    return "#{post_code}"
  end

  def set_lat_lng_remotely
    lat_lng = PactCoffeeGeoService.get_lat_lng(get_address)
    self.lat = lat_lng[:lat]
    self.lng = lat_lng[:lng]
  end
end