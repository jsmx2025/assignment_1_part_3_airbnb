class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :location
      t.text :policies
      t.integer :default_price_per_night
      t.integer :host_id

      t.timestamps

    end
  end
end
