json.extract! artist, :id, :name, :dob, :created_at, :updated_at
json.url artist_url(artist, format: :json)