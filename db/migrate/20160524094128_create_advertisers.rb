class CreateAdvertisers < ActiveRecord::Migration
  def change
    create_table :advertisers do |t|
      t.string :name
      t.string :about
      t.string :url
      t.string :picture

      t.timestamps null: false
    end
  end
end
