Book.destroy_all

GoogleBooks::Adapter.new("Roald Dahl").fetch_books

Book.create(title: "Fahrenheit 451", 
            author: "Ray Bradbury",
            snippet: "Burn the books")