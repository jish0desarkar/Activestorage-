json.extract! user, :id, :name, :school, :college, :passout, :created_at, :updated_at
json.url user_url(user, format: :json)
