class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :screen_name
      t.string :email
      t.string :salt
      t.string :encrypted_password
      t.string :phone_number
      t.integer :cc#
      t.string :cc_expiration
      t.integer :cvv2
      t.string :zipcode
      t.date :created_at
      t.date :updated_at
      t.references :languages, index: true

      t.timestamps null: false
    end
    add_foreign_key :users, :languages
  end
end
