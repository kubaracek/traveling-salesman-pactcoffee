require 'spec_helper'

describe DeliveriesController do
  describe '#index' do
    let(:latlngs) { [[1,1], [2,2]] }

    before { Delivery.stubs(:pluck).with(:lat, :lng).returns(latlngs) }
    before { PactCoffee::TpsSolver.stubs(:search).returns(vector: [1, 0]) }

    before { get :index }

    it 'should assign @marks array containing an lat-lng array' do
      assigns[:marks].should eql latlngs
    end

    it 'should count an efficient route and assign @route' do
      assigns[:route].should eql([[2,2], [1,1]])
    end

    it 'should response with status ok' do
      response.should be_ok
    end
  end
end