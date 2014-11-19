json.array!(@categories) do |category|
  json.extract! category, :id, :name, :active, :visible_on_homepage, :product_id
  json.url category_url(category, format: :json)
end
