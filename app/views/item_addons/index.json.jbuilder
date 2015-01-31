json.array!(@item_addons) do |item_addon|
  json.extract! item_addon, :id, :item_id, :addon_id, :included, :default
  json.url item_addon_url(item_addon, format: :json)
end
