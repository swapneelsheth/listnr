class RemoveGenreFromSong < ActiveRecord::Migration
  def change
    remove_column :songs, :genre, :string
  end
end
