class ProductItemSizeSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :item
  has_one :user
end
