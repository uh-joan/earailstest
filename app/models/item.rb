class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  belongs_to :item_type
  #amir: removed this > has_many :addon_list_items
  #amir: todo: add association to a model to hold addons for a given item
  has_many :item_sizes
  has_many :item_addons
end
