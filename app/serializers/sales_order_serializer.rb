class SalesOrderSerializer < ActiveModel::Serializer
  attributes :id, :name, :total, :subtotal, :discount, :surcharge, :enabled, :deleted
  has_one :sales_order_type
  has_one :order_status
  has_one :order_source
  has_one :user
end
