class ApplicationController < Sinatra::Base

    set :views, "app/views"




    get "/" do
        # "<h1>Hello Atlanta!!!!!!</h1>"
        erb :home
    end

    get "/books" do 
        # @my_name = "Paul"
        @books = Book.all
        erb :index 
    end

    get "/books/:id" do 
        id = params[:id]
        @book = Book.find(id)
        erb :show
    end

end
