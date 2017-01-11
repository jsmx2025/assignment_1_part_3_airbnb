class CreateGuestprofiles < ActiveRecord::Migration
  def change
    create_table :guestprofiles do |t|
      t.integer :guest_id

      t.timestamps

    end
  end
end
