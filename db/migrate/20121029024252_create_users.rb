class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username, unique: true
      t.string :email, unique: true
      t.string :password

      t.timestamps
    end

    add_index :users, :email
    add_index :users, :username
  end
end
