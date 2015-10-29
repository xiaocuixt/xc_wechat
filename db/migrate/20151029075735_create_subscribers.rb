class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :openid
      t.integer :sex
      t.string :nickname
      t.string :city
      t.string :province
      t.string :country
      t.string :headimgurl
      t.string :remark

      t.timestamps null: false
    end
  end
end
