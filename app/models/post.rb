class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :interest

  default_scope -> { order('created_at DESC') }

  INTERESTS = %w(All Charity Food Society Travel)

  validates :interest, inclusion: { in: INTERESTS }
  validates_presence_of :user
  validates_presence_of :url
end
