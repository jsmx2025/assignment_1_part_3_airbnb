class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :listing_id
      t.integer :guest_id

      t.timestamps

    end
  end
end
