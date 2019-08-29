class User
  attr_reader :username

  def initialize(username)
    @username = username
  end

  def like_tweet(tweet)
    Like.new(self, tweet)
  end

  def liked_tweets
    tweets = []
    Like.all.each do |like|
      if like.user == self
        tweets << like.tweet
      end
    end
    tweets
  end

  def liked_tweets
    tweets = []
    Like.all.each do |like|
      tweets << like.tweet if like.user == self
    end
    tweets
  end

  def liked_tweets
    likes = Like.all.select do |like|
      like.user == self
    end
    likes.map { |l| l.tweet }
  end

  def liked_tweets
    Like.all.select { |l| l.user == self }.map { |l| l.tweet }
  end

  def post_tweet(message)
    Tweet.new(message, self)
  end

  def tweets
    Tweet.all.select do |tweet|
      tweet.user == self
    end
  end

end
