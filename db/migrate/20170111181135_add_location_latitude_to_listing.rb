class AddLocationLatitudeToListing < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :location_latitude, :float
  end
end
