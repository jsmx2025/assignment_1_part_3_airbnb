class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :review_id

      t.timestamps

    end
  end
end
