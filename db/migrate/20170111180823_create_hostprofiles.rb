class CreateHostprofiles < ActiveRecord::Migration
  def change
    create_table :hostprofiles do |t|
      t.integer :user_host_id

      t.timestamps

    end
  end
end
