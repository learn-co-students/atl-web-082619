class User
  attr_reader :username

  def initialize(username)
    @username = username
  end

  def tweets
    Tweet.all.select { |t| t.user == self }
    # mine = []
    # Tweet.all.each do |t|
    #   if t.user == self
    #     mine << t
    #   end
    # end
    # mine
  end

  def post_tweet(message)
    # @tweets << Tweet.new(self, message)
    # We no longer want to store the tweet
    # in an instance variable. Tweet.all
    # will be our single source of truth! (about tweets)
    Tweet.new(self, message)
  end
end