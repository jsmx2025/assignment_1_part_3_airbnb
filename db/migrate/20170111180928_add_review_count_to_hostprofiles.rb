class AddReviewCountToHostprofiles < ActiveRecord::Migration[5.0]
  def change
    add_column :hostprofiles, :reviews_count, :integer
  end
end
