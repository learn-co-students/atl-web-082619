class AuthorsController < Sinatra::Base

    set :views, "app/views/authors"
    set :method_override, true

    get "/authors" do 
        @authors = Author.all 
        erb :index
    end

    get "/authors/new" do 
        erb :new
    end

    get "/authors/:id" do 
        @author = Author.find(params[:id])
        erb :show
    end

    post "/authors" do 
        author = Author.find_or_create_by(name: params[:name])
        params[:book].each do |book_hash|
            if !book_hash[:title].empty?
                book_title = book_hash[:title]
                book_snippet = book_hash[:snippet]
                Book.create(
                    author: author, snippet: book_snippet, title: book_title)
            end
        end
        redirect "/authors/#{author.id}"
    end

end