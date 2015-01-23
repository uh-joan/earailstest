class Category < ActiveRecord::Base
  belongs_to :user
  has_many :product_category_sizes
  # has_many :product_groups

  # def serializable_hash(options = nil)
  #   super({only: [:id, :name, :shortDescription, :enabled, :deleted],
  #          include: :user}.merge(options || {}))
  # end

end
