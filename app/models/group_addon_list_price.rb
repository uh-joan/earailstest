class GroupAddonListPrice < ActiveRecord::Base
  belongs_to :group
  belongs_to :group_addon_list
  belongs_to :addon
  belongs_to :category_size
  belongs_to :user
  #amir:
  has_many :addons
end
