class CreateAdInterests < ActiveRecord::Migration
  def change
    create_table :ad_interests do |t|
      t.string :interest
      t.references :ad, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
