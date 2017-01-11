class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :price_per_night
      t.integer :availability_id

      t.timestamps

    end
  end
end
