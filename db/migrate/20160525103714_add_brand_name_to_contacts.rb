class AddBrandNameToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :brand_name, :string
  end
end
