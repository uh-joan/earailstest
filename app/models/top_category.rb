class TopCategory < ActiveRecord::Base
  belongs_to :user
  #has_many :category_sizes
  #has_many :groups

  # def serializable_hash(options = nil)
  #   super({only: [:id, :name, :shortDescription, :enabled, :deleted],
  #          include: :user}.merge(options || {}))
  # end

end
