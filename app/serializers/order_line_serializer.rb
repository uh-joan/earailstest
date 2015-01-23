class OrderLineSerializer < ActiveModel::Serializer
  attributes :id, :text, :dealText, :customerNote, :total, :price, :discount, :addonCost, :quantity, :deleted
  has_one :order
  has_one :user
end
