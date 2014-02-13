class Delivery < ActiveRecord::Base

  validates_numericality_of :lat, :lng, allow_blank: true

  # Actually this method should return address as one-line string built from
  # address parameters like House number, street, post-code but in this example
  # I use just post_code so it's basically just proxy getter for post_code
  def get_address
    return "#{post_code}"
  end
end