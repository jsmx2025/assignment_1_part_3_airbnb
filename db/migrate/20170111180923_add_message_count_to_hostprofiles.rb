class AddMessageCountToHostprofiles < ActiveRecord::Migration[5.0]
  def change
    add_column :hostprofiles, :messages_count, :integer
  end
end
