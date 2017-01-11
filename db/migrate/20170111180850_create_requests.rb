class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :content
      t.integer :listing_id
      t.integer :guest_id

      t.timestamps

    end
  end
end
