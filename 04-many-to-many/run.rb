require 'pry'

require_relative 'tweet'
require_relative 'user'
require_relative 'like'

brit = User.new('king_cons')
princeton = User.new('princey')
raza = User.new('raza')

t1 = raza.post_tweet("talk SSOT to me")
t2 = princeton.post_tweet("no, go back to pokemon exmaples")
t3 = brit.post_tweet("hey, let's write some unit tests soon!")

# Like.new(brit, t1)
l1 = brit.like_tweet(t1)
# Like.new(princeton, t2)
l2 = princeton.like_tweet(t2)
# Like.new(raza, t2)
l3 = raza.like_tweet(t2)

binding.pry