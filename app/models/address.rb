class Address < ActiveRecord::Base

  validates_numericality_of :lat, :lng, allow_blank: true
end