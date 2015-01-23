class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  belongs_to :item_type
  has_many :addon_list_items
  has_many :item_sizes
end
