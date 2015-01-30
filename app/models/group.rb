class Group < ActiveRecord::Base
  belongs_to :user
  # belongs_to :top_category
  has_many :group_addon_lists
  has_many :items
  #amir:
  has_many :category_sizes
end
