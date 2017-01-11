class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :listing_id
      t.integer :guest_id
      t.text :content
      t.integer :host_id

      t.timestamps

    end
  end
end
