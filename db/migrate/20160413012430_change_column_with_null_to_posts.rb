class ChangeColumnWithNullToPosts < ActiveRecord::Migration
  def change
    change_column :posts, :interest, :string, null: false
    change_column :posts, :site_name, :text, null: false
  end
end
