class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :bpm, :artist, :url, :playlist
end
