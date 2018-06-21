json.extract! song, :id, :name, :band, :album, :genre, :chord, :created_at, :updated_at
json.url song_url(song, format: :json)
