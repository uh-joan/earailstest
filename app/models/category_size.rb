class CategorySize < ActiveRecord::Base
  belongs_to :group
  belongs_to :user
  #amir: add relationship to itemSize
  # has_many :item_sizes

  # def serializable_hash(options = nil)
  #   super({only: [:id, :prefixLabelOnline, :prefixLabelPrint, :prefixLabelPos,
  #                 :postfixLabelOnline, :postfixLabelPrint, :postfixLabelPos],
  #          include: :top_category}.merge(options || {}))
  # end

end
