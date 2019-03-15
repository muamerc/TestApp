class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, { id: false } do |t|

      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :address
      t.datetime :birthdate
      t.datetime :last_login

      t.timestamps
    end



    add_index :users, :email, unique: true
  end
end
