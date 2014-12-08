class ProductCategory < ActiveRecord::Base
  belongs_to :user
  has_many :product_category_sizes
  has_many :product_groups
end
