class ProductGroup < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :product_group_add_on_lists
end
