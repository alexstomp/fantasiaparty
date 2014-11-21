class AddSortToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :sort, :integer
  end
end
