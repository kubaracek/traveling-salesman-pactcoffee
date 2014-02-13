class Address < ActiveRecord::Base

  validates_numericality_of :lat, :lng
end