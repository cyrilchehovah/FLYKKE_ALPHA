class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :status,   default: :pending

      t.timestamps null: false
    end
  end
end
