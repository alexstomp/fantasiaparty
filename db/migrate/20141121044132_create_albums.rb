class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.datetime :date
      t.string :nom
      t.text :description
      t.integer :age
      t.integer :type

      t.timestamps
    end
  end
end
