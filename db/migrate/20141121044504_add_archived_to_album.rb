class AddArchivedToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :archived, :boolean
  end
end
