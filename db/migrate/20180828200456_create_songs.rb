class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :bpm
      t.string :artist
      t.string :url
      t.references :playlist_id, foreign_key: true, index: true

      t.timestamps
    end
  end
end
