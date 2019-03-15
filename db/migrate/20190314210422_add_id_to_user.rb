class AddIdToUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :id
    add_column :users, :id, :integer
  end
end
