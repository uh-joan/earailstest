class CreateProductItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :enabled, :deleted
  has_one :user
end
