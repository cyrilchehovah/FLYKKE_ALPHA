class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, :omniauth_providers => [ :facebook ]

  has_many :posts, dependent: :destroy
  validates_presence_of :first_name, :last_name, :email, :password

  acts_as_voter

  # mount_uploader :picture, AvatarUploader

  def self.find_for_facebook_oauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.picture = auth.info.image
      user.about = auth.info.about
      user.gender = auth.info.gender
      user.location = auth.info.location
      user.age_range = auth.info.age_range
      user.birthday = auth.info.birthday
      user.likes = auth.info.likes
      user.token = auth.credentials.token
      user.token_expiry = Time.at(auth.credentials.expires_at)
    end
  end

  def number_of_flykkes_received
    array = self.posts.map { |post| [ post.get_likes(:vote_scope => 'flykke').size ] }
    if array.size != 0
      a = array.inject{|sum,x| sum + x }
      return a.inject{|sum,x| sum + x }
    else return a = 0
    end
  end
end

