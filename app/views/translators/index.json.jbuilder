json.array!(@translators) do |translator|
  json.extract! translator, :id, :first_name, :last_name, :screen_name, :profession, :other_qualifications, :rate_per_minute, :email, :salt, :encrypted_password, :phone_number, :cc#, :cc_expiration, :cvv2, :zipcode, :overall_rating, :total_transactions, :created_at, :updated_at
  json.url translator_url(translator, format: :json)
end
