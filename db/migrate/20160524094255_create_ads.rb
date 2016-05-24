class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :title
      t.string :graphic_content
      t.string :description
      t.string :url
      t.references :advertiser, index: true, foreign_key: true
      t.integer :duration

      t.timestamps null: false
    end
  end
end
