require 'pry'
require 'rest-client'
require 'json'
require 'colorize'

#### Outline
###  5m   Intro
##In hasketball couldn't we just have done this instead of going deep into map

# def get_players
  # game_hash.values.map do |team_info|
  #   team_info[:players]
  # end.flatten
#  --->  game_hash[:home][:players] + game_hash[:away][:players]
# end

# Yes! However if the data changed our code would break. We need to think about how we can write our code to be dynamic.
# But at this point all of the data we have been working with has come from our specs. How can we retrieve real data to work with?

###  5m   How the internet works

## 1. What is HTTP? 
#   HTTP stands for Hypertext Transfer Protocol and is used to structure requests and responses over the internet. 
#   HTTP requires data to be transferred from one point to another over the network.

## 2. The transfer of resources happens using TCP (Transmission Control Protocol). In viewing this webpage, 
#    TCP manages the channels between your browser and the server (in this case, https://www.googleapis.com/books/v1/volumes).

#   When we type an address into the browser we are commanding it to open a TCP channel to the server that responds to that URL (or Uniform Resource Locator)

#   In this situation, your computer, which is making the request, is called the client. The URL you are requesting is the address that belongs to the server.

#   Once the TCP connection is established, the client sends a HTTP GET request to the server to retrieve the webpage it should display. After the server 
#   has sent the response, it closes the TCP connection. If you open the website in your browser again, or if your browser automatically requests something from 
#   the server, a new connection is opened which follows the same process described above. 
#   GET requests are one kind of HTTP method a client can call and are what we will be makeing today in order to retrieve data from 
#   googles books api.

## 3. What is JSON? 
#  JSON (JavaScript Object Notation) is a lightweight data-interchange format. 
#  It is easy for humans to read and write. It is easy for machines to parse and generate.

## JSON is built on two structures:
# 1. A collection of name/value pairs. In various languages, this is realized as an object, record, struct, dictionary, hash table, keyed list, or associative array.
# 2. An ordered list of values. In most languages, this is realized as an array, vector, list, or sequence.
##These are universal data structures. Virtually all modern programming languages support them in one form or another.



#  5m   Ruby gems for working with APIs
# 15m   Making requests to Google Books API
# 15m   Student Exercise
# 15m   Refactoring with Single Responsibility Principle


# Deliverables
# 1. Write an application that takes a search term from a user
# 2. Make a Request to the GoogleBooks API and get back some results
# 3. Display the titles, author names, and description for each book

# Stretch
# Bring in gems that help style terminal for module one week three project week.

def red
    colorize(:red)
end
def green
    colorize(:green)
end
def yellow
    colorize(:yellow)
end
def blue
    colorize(:light_blue)
end
def orange
    colorize(:orange)
end





def welcome
    puts "Welcome to Booksearcher".red
    puts "Please enter a one or two word searchterm to start searching for a book.".green
end

def user_input
    gets.chomp
end

def google_request(term_one, term_two = nil)
    google_api = "https://www.googleapis.com/books/v1/volumes?q=#{term_one}+#{term_two}"
    response = RestClient.get(google_api)
    JSON.parse(response)
    # binding.pry
end

def get_title(book)
    if book["volumeInfo"]["title"]
        book["volumeInfo"]["title"]
    else
        'No title found'
    end
end

def get_authors(book)
    if book['volumeInfo']['authors']
        book['volumeInfo']['authors'].join(' and ')
    else
        'No authors found'
    end
end

def get_description(book)
    if book["volumeInfo"]["description"]
        book["volumeInfo"]["description"]
    else
        'No description was found.'
    end
end

def print_book(title, authors, description)
    puts "Title:".green + " " + "#{title}".blue
    puts "Athors:".green + " " + "#{authors}".red
    puts "Descrition:".green + " " + "#{description}".blue
    puts "-" * 30
   
   
end

def run
    welcome
    search_term = user_input
    termOne = search_term.split(" ").first
    termTwo = search_term.split(" ").last
    if termOne == termTwo
        termTwo = nil
    end

    google_request(termOne, termTwo)["items"].each do |item|
        # puts "Title: #{item["volumeInfo"]['title']}"
        # puts "Title: #{get_title(item)}"
        
        # puts "Authors:' #{item["volumeInfo"]['authors'].join("and ")}"
        # puts "Athors(s): #{get_authors(item)}"

        # puts "Description:  #{item["volumeInfo"]['description']}"
        # puts "Description:  #{get_description(item)}"

        title = get_title(item)
        authors = get_authors(item)
        description = get_description(item)

        # binding.pry

        print_book(title, authors, description)
    end
        # puts String.colors
        # puts String.modes
        # puts String.color_samples
end

run