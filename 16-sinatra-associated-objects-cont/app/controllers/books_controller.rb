class BooksController < Sinatra::Base
    set :views, "app/views/books"
    set :method_override, true

    get "/books" do 
        # @my_name = "Paul"
        @books = Book.all
        erb :index 
    end

    get "/books/new" do 
        # loads empty form
        erb :new
    end

    post "/books" do
        author_id = params[:author_id]
        # author = Author.find(author_id)
        title = params[:title]
        snippet = params[:snippet]
        book = Book.create(author_id: author_id, title: title, snippet: snippet)
        redirect "/books/#{book.id}"
    end

    get "/books/:id" do 
        id = params[:id]
        @book = Book.find(id)
        erb :show
    end

    get "/books/:id/edit" do 
        @book = Book.find(params[:id])
        erb :edit 
    end

    patch "/books/:id" do
        book = Book.find(params[:id])
        author = params[:author]
        title = params[:title]
        snippet = params[:snippet] 
        book.update(author: author, title: title, snippet: snippet)
        redirect "/books/#{book.id}"
    end

    delete "/books/:id" do 
        book = Book.find(params[:id])
        book.destroy
        redirect "/books"
    end

end