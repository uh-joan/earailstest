class ProductCategorySize < ActiveRecord::Base
  belongs_to :category

  # def serializable_hash(options = nil)
  #   super({only: [:id, :prefixLabelOnline, :prefixLabelPrint, :prefixLabelPos,
  #                 :postfixLabelOnline, :postfixLabelPrint, :postfixLabelPos],
  #          include: :category}.merge(options || {}))
  # end

end
