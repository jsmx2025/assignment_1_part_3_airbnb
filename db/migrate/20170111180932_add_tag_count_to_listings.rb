class AddTagCountToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :tags_count, :integer
  end
end
