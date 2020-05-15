json.extract! profile, :id, :username, :location, :rating, :created_at, :updated_at
json.url profile_url(profile, format: :json)
