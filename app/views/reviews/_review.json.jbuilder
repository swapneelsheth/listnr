json.extract! review, :id, :rating, :description, :song_id, :created_at, :updated_at
json.url review_url(review, format: :json)