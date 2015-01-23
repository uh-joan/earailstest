class ProductItemsizeSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :prduct_item
  has_one :user
end
