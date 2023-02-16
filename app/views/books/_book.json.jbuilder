json.extract! book, :id, :name, :description, :price, :color, :quantity, :producer_name, :created_at, :updated_at
json.url book_url(book, format: :json)
