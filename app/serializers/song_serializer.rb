class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :bpm, :artist, :url
  has_one :playlist
end
