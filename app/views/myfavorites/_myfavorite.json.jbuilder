json.extract! myfavorite, :id, :smart_phone_name, :description, :price, :color, :created_at, :updated_at
json.url myfavorite_url(myfavorite, format: :json)
