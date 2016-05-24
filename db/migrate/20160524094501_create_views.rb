class CreateViews < ActiveRecord::Migration
  def change
    create_table :views do |t|
      t.references :ad, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true
      t.boolean :donation_complete, default: false

      t.timestamps null: false
    end
  end
end
