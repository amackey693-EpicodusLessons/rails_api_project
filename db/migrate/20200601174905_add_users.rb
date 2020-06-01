class AddUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :user do |t|
      t.string :email
      t.string :username
      t.string :password_hash
      t.string :password_salt

      t.timestamps
    end
  end
end
