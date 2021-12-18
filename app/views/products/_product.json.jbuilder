json.extract! product, :id, :name, :price, :oldPrice, :description, :product_attributes, :quality, :company, :delivery, :delivery_time, :image, :stock, :bestSeller, :created_at, :updated_at
json.url product_url(product, format: :json)
