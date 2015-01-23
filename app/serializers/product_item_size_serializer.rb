class ProductItemSizeSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :product_item
  has_one :user
end
