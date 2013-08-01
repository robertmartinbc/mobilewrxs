class Offer < ActiveRecord::Base
  belongs_to :promotion
  attr_accessible :body
end
