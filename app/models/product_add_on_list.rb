class ProductAddOnList < ActiveRecord::Base
  has_many :product_add_on_list_items
  belongs_to :user
end