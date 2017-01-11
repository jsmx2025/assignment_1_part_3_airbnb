class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :guest_id
      t.integer :host_id
      t.integer :listing_id

      t.timestamps

    end
  end
end
