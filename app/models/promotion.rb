class Promotion < ActiveRecord::Base
  has_many :offers
  belongs_to :user
  attr_accessible :body, :price, :title, :website, :expiration, :image

  default_scope order('created_at DESC')
end
