class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :guest_id
      t.integer :host_id
      t.integer :booking_id
      t.integer :listing_id

      t.timestamps

    end
  end
end
