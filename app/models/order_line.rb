class OrderLine < ActiveRecord::Base
  belongs_to :order
  belongs_to :user
  has_many :items
end
