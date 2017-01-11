class CreateListingTags < ActiveRecord::Migration
  def change
    create_table :listing_tags do |t|
      t.string :private_room
      t.string :entire_home
      t.string :number_of_bedrooms
      t.string :number_of_bathrooms
      t.string :number_of_beds
      t.string :max_occupants
      t.string :city
      t.string :neighborhood
      t.integer :listing_id

      t.timestamps

    end
  end
end
