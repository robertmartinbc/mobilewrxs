class Offer < ActiveRecord::Base
  belongs_to :promotions
  attr_accessible :body
end
