class AddPlaylistRefToSong < ActiveRecord::Migration[5.1]
  def change
    add_reference :song, :playlist, foreign_key: true
  end
end
