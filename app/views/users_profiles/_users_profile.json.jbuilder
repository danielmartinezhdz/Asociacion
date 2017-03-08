json.extract! users_profile, :id, :user_id, :profile_id, :created_at, :updated_at
json.url users_profile_url(users_profile, format: :json)
