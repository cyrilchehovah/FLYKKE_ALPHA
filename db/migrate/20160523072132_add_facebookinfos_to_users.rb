class AddFacebookinfosToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
    add_column :users, :location, :string
    add_column :users, :age_range, :integer
    add_column :users, :birthday, :string
    add_column :users, :likes, :string
  end
end

