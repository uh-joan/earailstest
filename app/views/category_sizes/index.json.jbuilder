json.array!(@category_sizes) do |product_category_size|
  json.extract! product_category_size, :id, :prefixLabelOnline, :prefixLabelPrint, :prefixLabelPos, :postfixLabelOnline, :postfixLabelPrint, :postfixLabelPos, :top_category_id, :user_id
  json.url product_category_size_url(product_category_size, format: :json)
end