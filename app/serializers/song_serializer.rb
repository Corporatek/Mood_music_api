class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :bpm, :url, :playlist_id
end
