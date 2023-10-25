json.extract! location, :id, :name, :line_1, :city, :state, :zip_code, :created_at, :updated_at
json.url location_url(location, format: :json)
