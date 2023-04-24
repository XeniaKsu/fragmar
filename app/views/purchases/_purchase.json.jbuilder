json.extract! purchase, :id, :listing_id, :buyer_id, :purchase_date, :shipping_address, :total_price, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
