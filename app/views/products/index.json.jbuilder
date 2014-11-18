json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :image_url, :price, :availability_date, :category, :active
  json.url product_url(product, format: :json)
end
