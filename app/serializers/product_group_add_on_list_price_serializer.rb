class ProductGroupAddOnListPriceSerializer < ActiveModel::Serializer
  attributes :id, :cost, :prices, :enabled, :deleted
  has_one :group
  has_one :pr_gr_adon_li
  has_one :addon
  has_one :pr_cat_size
  has_one :user
end
