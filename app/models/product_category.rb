class ProductCategory < ActiveRecord::Base
  belongs_to :user
  # has_many :productCategorySizes
  # has_many :product_groups

  # def serializable_hash(options = nil)
  #   super({only: [:id, :name, :shortDescription, :enabled, :deleted],
  #          include: :user}.merge(options || {}))
  # end

end
