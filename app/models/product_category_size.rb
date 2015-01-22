class ProductCategorySize < ActiveRecord::Base
  belongs_to :product_category

  # def serializable_hash(options = nil)
  #   super({only: [:id, :prefixLabelOnline, :prefixLabelPrint, :prefixLabelPos,
  #                 :postfixLabelOnline, :postfixLabelPrint, :postfixLabelPos],
  #          include: :product_category}.merge(options || {}))
  # end

end
