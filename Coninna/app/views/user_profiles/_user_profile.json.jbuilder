json.extract! user_profile, :id, :name, :user_name, :phone, :mail, :role, :dob, :credit_card_info, :country, :password, :address, :last_access, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)
