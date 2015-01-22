class ProductGroupAddOnListPrice < ActiveRecord::Base
  belongs_to :product_group
  belongs_to :pr_gr_adon_li
  belongs_to :product_add_on
  belongs_to :pr_cat_size
  belongs_to :user
end
