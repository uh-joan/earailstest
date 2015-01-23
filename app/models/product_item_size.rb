class ProductItemSize < ActiveRecord::Base
  belongs_to :product_item
  belongs_to :user
end
