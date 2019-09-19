class ApplicationController < Sinatra::Base

    set :views, "app/views"
    set :method_override, true

    get "/" do
        # "<h1>Hello Atlanta!!!!!!</h1>"
        erb :home
    end

  

end
