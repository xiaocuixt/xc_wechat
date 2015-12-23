class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :keyword
      t.string :mtype
      t.string :title
      t.string :summary
      t.string :image
      t.string :url

      t.timestamps null: false
    end
  end
end
