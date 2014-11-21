class RenameTypeColumnOnAlbum < ActiveRecord::Migration
  def change
    rename_column :albums, :type, :options
  end
end
