class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :name, :songs, :song
end
