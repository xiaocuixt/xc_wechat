class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :avatar

      t.timestamps null: false
    end
  end
end
