class ProductCategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :shortDescription, :enabled, :deleted, :updated_at
  # has_many :productCategorySizes
  has_one :user
end
