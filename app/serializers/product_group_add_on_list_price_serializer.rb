class ProductGroupAddOnListPriceSerializer < ActiveModel::Serializer
  attributes :id, :cost, :prices, :enabled, :deleted
  has_one :product_group
  has_one :pr_gr_adon_li
  has_one :product_add_on
  has_one :pr_cat_size
  has_one :user
end
