class CategorySize < ActiveRecord::Base
  belongs_to :top_category
  belongs_to :user

  # def serializable_hash(options = nil)
  #   super({only: [:id, :prefixLabelOnline, :prefixLabelPrint, :prefixLabelPos,
  #                 :postfixLabelOnline, :postfixLabelPrint, :postfixLabelPos],
  #          include: :top_category}.merge(options || {}))
  # end

end
