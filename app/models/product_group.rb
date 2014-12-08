class ProductGroup < ActiveRecord::Base
  has_many :product_group_add_on_lists
  belongs_to :user
end
