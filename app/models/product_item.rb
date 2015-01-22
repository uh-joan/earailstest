class ProductItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :product_group
  belongs_to :product_item_type
end
