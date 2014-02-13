class Address < ActiveRecord::Base

  validates_numericality_of :lat, :lng, allow_blank: true

  def get_address
    return "#{post_code}"
  end
end