class View < ActiveRecord::Base
  belongs_to :ad
  belongs_to :user
  belongs_to :post
end
