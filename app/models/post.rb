class Post < ActiveRecord::Base
  belongs_to :user
  # tracked only: [:create, :flykke], owner: Proc.new{ |controller, model| model.user }
  # include Shared::Callbacks
  acts_as_votable

  default_scope -> { order('created_at DESC') }

  INTERESTS = %w(All Charity Food Lifestyle Travel)

  validates :interest, inclusion: { in: INTERESTS }
  validates_presence_of :user
  validates_presence_of :url


  # auto_html_for :content do
  #   html_escape
  #   image
  #   youtube(width: 400, height: 250, autoplay: true)
  #   link target: '_blank', rel: 'nofollow'
  #   simple_format
  # end
end


