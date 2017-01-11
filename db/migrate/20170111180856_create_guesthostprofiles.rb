class CreateGuesthostprofiles < ActiveRecord::Migration
  def change
    create_table :guesthostprofiles do |t|
      t.integer :host_id
      t.integer :user_guest_id

      t.timestamps

    end
  end
end
