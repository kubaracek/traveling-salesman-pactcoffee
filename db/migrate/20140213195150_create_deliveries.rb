class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.string :post_code
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
