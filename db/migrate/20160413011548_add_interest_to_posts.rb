class AddInterestToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :interest, :string
  end
end
