class ProductCategorySizeSerializer < ActiveModel::Serializer
  attributes :id, :prefixLabelOnline, :prefixLabelPrint, :prefixLabelPos, :postfixLabelOnline, :postfixLabelPrint, :postfixLabelPos
  has_one :productCategory
end
