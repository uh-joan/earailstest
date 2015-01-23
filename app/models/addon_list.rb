class AddonList < ActiveRecord::Base
  has_many :addon_list_items
  belongs_to :user
end
