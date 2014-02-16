require 'tps_solver'

class DeliveriesController < ApplicationController
  def index
    @marks = Delivery.pluck(:lat, :lng)
    t1 = Time.now
    order = PactCoffee::TpsSolver.search(@marks, 200, 10, 0.1, 2.5, 0.1, 0.9)[:vector]
    t2 = Time.now
    puts "took: #{t2-t1}"
    @route = @marks.values_at(*order)
  end
end