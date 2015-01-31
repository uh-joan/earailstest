class ItemAddonSerializer < ActiveModel::Serializer
  attributes :id, :included, :default
  has_one :item
  has_one :addon
end
