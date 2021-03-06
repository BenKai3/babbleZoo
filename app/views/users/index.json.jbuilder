json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :screen_name, :email, :salt, :encrypted_password, :phone_number, :cc#, :cc_expiration, :cvv2, :zipcode, :created_at, :updated_at, :languages_id
  json.url user_url(user, format: :json)
end
