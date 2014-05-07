class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :name, null: false
      t.string :encrypted_password, null: false
      t.boolean :pro, default: false
      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :name, unique: true
    add_index :users, :pro
  end
end
