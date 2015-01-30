class ItemSize < ActiveRecord::Base
  belongs_to :item
  belongs_to :user
  #amir: additional associations
  belongs_to :category_size
  has_one :category_size
end
