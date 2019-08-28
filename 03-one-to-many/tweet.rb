class Tweet
  attr_reader :user, :message

  @@tweets = []

  def initialize(user, message)
    @user = user
    @message = message
    @@tweets << self
  end

  def username
    ## return the username for the tweet's user
    self.user.username
  end

  def self.all
    @@tweets
  end
end