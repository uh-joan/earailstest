class ItemAddon < ActiveRecord::Base
  belongs_to :item
  belongs_to :addon
  has_many :addons
end
