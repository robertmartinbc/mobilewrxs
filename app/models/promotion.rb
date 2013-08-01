class Promotion < ActiveRecord::Base
  has_many :offers
  attr_accessible :body, :price, :title
end
