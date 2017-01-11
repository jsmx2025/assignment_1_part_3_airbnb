class CreateHTagRatings < ActiveRecord::Migration
  def change
    create_table :h_tag_ratings do |t|
      t.float :overall_rating
      t.integer :rating_id
      t.integer :guest_id

      t.timestamps

    end
  end
end
