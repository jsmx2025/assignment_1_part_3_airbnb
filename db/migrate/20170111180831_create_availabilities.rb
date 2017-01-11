class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.integer :listing_id
      t.datetime :dates_available

      t.timestamps

    end
  end
end
