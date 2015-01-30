class ItemType < ActiveRecord::Base
  belongs_to :user
  #amir: additional relations
  has_many :items
end
