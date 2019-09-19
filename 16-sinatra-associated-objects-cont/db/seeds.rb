Book.destroy_all
Author.destroy_all

GoogleBooks::Adapter.new("Roald Dahl").fetch_books

Book.create(title: "Fahrenheit 451", 
            author: Author.find_or_create_by(name: "Ray Bradbury"),
            snippet: "Burn the books")