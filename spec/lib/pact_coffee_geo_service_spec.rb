require 'spec_helper'
require 'pact_coffee_geo_service'

describe PactCoffeeGeoService do
  subject { PactCoffeeGeoService }

  before do
    stub_request(:any, "http://nominatim.openstreetmap.org/search?format=json&limit=1&q=E15%201ED").
      to_return(:body => '[{"place_id":"26238059","licence":"Data \u00a9 OpenStreetMap contributors, ODbL 1.0. http:\/\/www.openstreetmap.org\/copyright","osm_type":"way","osm_id":"11158301","boundingbox":["51.5505638122559","51.5516967773438","-0.00375830009579659","0.00199950020760298"],"lat":"51.5513053","lon":"-0.0010303","display_name":"Colegrave Road, Stratford New Town, London Borough of Newham, London, Greater London, England, E15, United Kingdom","class":"highway","type":"residential","importance":0.3}]', :status => 200, :headers => { 'Content-Type' => 'application/json' })
  end

  describe 'get_lat_lng' do
    it 'should return a ruby object containing address' do
      lat_lng = subject.get_lat_lng('E15 1ED')
      lat_lng.should eql({lat: 51.5513053, lng: -0.0010303})
    end

    it 'should encode the url to the right url format' do
      URI.expects(:encode).with("http://nominatim.openstreetmap.org/search?q=E15 1ED&limit=1&format=json").returns('http://nominatim.openstreetmap.org/search?format=json&limit=1&q=E15%201ED')
      subject.get_lat_lng('E15 1ED')
    end
  end
end