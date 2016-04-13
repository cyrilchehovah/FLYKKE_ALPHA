class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
