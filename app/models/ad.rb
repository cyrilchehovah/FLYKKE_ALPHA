class Ad < ActiveRecord::Base
  belongs_to :advertiser

  has_many :views
  has_many :ad_interests

  accepts_nested_attributes_for :ad_interests

end
