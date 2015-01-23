class Order < ActiveRecord::Base
  belongs_to :order_type
  belongs_to :order_status
  belongs_to :order_source
  belongs_to :user
  has_many :order_lines
end
