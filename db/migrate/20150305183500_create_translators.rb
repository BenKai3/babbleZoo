class CreateTranslators < ActiveRecord::Migration
  def change
    create_table :translators do |t|
      t.string :first_name
      t.string :last_name
      t.string :screen_name
      t.string :profession
      t.string :other_qualifications
      t.float :rate_per_minute
      t.string :email
      t.string :salt
      t.string :encrypted_password
      t.string :phone_number
      t.integer :cc#
      t.string :cc_expiration
      t.integer :cvv2
      t.string :zipcode
      t.float :overall_rating
      t.integer :total_transactions
      t.date :created_at
      t.date :updated_at

      t.timestamps null: false
    end
  end
end
