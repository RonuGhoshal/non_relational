json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :release_year, :price, :description
  json.url book_url(book, format: :json)
end
