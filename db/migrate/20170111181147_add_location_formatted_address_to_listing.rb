class AddLocationFormattedAddressToListing < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :location_formatted_address, :string
  end
end
