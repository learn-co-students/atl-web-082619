require 'pry'
require_relative 'user'
require_relative 'tweet'

brit = User.new("king_cons")
princeton = User.new("princey")

t1 = Tweet.new(brit, "i am not really awake yet but it is fine")
t1.username

brit.post_tweet("i'm waking up now. ruby is pretty cool")
princeton.post_tweet("man, whatever. when do we get to SQL?")

Tweet.all.each do |tweet|
  puts "#{tweet.username} says: '#{tweet.message}'"
end

# def create_tweet_for_user(user, message)
#   Tweet.new(user, message)
# end

binding.pry
