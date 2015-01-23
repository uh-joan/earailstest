class SalesOrder < ActiveRecord::Base
  belongs_to :sales_order_type
  belongs_to :sales_order_status
  belongs_to :sales_order_source
  belongs_to :user
end
