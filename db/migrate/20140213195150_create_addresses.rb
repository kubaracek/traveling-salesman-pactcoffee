class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :post_code
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
