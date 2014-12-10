json.array!(@product_category_sizes) do |product_category_size|
  json.extract! product_category_size, :id, :prefixLabelOnline, :prefixLabelPrint, :prefixLabelPos, :postfixLabelOnline, :postfixLabelPrint, :postfixLabelPos, :productCategory_id
  json.url product_category_size_url(product_category_size, format: :json)
end
