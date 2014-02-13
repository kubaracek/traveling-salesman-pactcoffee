require 'spec_helper'

describe Address do
  subject { Address.new({post_code: post_code, lat: lat, lng: lng}) }
  let(:post_code) { 'E15 1ED' }
  let(:lat) { 51.551011 }
  let(:lng) { -0.001743 }

  it { should allow_value('E15 1ED').for(:post_code) }
  it { should allow_value(51.551011, nil).for(:lat) }
  it { should allow_value(-0.001743, nil).for(:lng) }

  it { should validate_numericality_of(:lat) }
  it { should validate_numericality_of(:lng) }


  # Actually this method should return address as one-line string built from
  # address parameters like House number, street, post-code but in this example
  # I use just post_code so it's basically just proxy getter for post_code
  describe 'get_address' do
    its(:get_address) { should eql "#{post_code}" }
  end
end