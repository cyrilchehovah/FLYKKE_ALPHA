class AddSiteNameToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :site_name, :text
  end
end
