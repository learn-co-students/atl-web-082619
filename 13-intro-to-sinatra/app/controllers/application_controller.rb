class ApplicationController < Sinatra::Base

    set :views, "app/views"

    books = [{title: "Harry Potter and the Sorcerer's Stone",
               author: "J.K. Rowling",
               snippet: "Harry beats a troll"},
               {title: "Harry Potter and the Chamber of Secrets",
                author: "J.K. Rowling",
                snippet: "Harry confronts racism"}]


    get "/" do
        # "<h1>Hello Atlanta!!!!!!</h1>"
        erb :home
    end

    get "/books" do 
        # @my_name = "Paul"
        @books = books # Book.all
        erb :index 
    end

end
