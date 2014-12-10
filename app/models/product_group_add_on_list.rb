class ProductGroupAddOnList < ActiveRecord::Base
  belongs_to :product_group
  belongs_to :user
end
