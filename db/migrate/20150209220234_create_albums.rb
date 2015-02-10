class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :year_released
      t.string :running_time
      t.references :band, index: true
      t.references :genre, index: true

      t.timestamps null: false
    end
    add_foreign_key :albums, :bands
    add_foreign_key :albums, :genres
  end
end
