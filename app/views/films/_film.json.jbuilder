json.extract! film, :id, :title, :premiere, :duration, :created_at, :updated_at
json.url film_url(film, format: :json)
