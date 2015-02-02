class AddonListItem < ActiveRecord::Base
  belongs_to :user
  has_many :addon_lists
  has_many :addons
end
