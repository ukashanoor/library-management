json.extract! book, :id, :isbn, :author, :title, :subject, :publication, :no_of_copies, :available, :issue, :created_at, :updated_at
json.url book_url(book, format: :json)
