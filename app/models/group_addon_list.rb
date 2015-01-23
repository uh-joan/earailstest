class GroupAddonList < ActiveRecord::Base
  belongs_to :group
  belongs_to :user
  belongs_to :addon_list
  has_many :group_addon_list_prices
end
