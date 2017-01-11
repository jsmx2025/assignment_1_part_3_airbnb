class AddLocationLongitudeToListing < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :location_longitude, :float
  end
end
