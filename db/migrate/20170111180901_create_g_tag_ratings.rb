class CreateGTagRatings < ActiveRecord::Migration
  def change
    create_table :g_tag_ratings do |t|
      t.float :accuracy
      t.float :communication
      t.float :cleanliness
      t.float :location
      t.float :check_in
      t.float :value
      t.integer :rating_id
      t.integer :host_id

      t.timestamps

    end
  end
end
