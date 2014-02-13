require 'spec_helper'

describe Address do
  it { should allow_value('E15 1ED').for(:post_code) }
  it { should allow_value(51.551011, nil).for(:lat) }
  it { should allow_value(-0.001743, nil).for(:lng) }

  it { should validate_numericality_of(:lat) }
  it { should validate_numericality_of(:lng) }
end