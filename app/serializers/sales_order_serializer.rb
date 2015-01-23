class SalesOrderSerializer < ActiveModel::Serializer
  attributes :id, :name, :total, :subtotal, :discount, :surcharge, :enabled, :deleted
  has_one :sales_order_type
  has_one :sales_order_status
  has_one :sales_order_source
  has_one :user
end
