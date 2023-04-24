json.extract! listing, :id, :perfume_id, :seller_id, :condition, :description, :price, :created_at, :updated_at
json.url listing_url(listing, format: :json)
