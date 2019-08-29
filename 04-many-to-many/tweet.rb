class Tweet
  attr_reader :message, :user

  @@all = []

  def initialize(message, user)
    @message = message
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

  # def likers
  #   likes = Like.all.select { |l| l.tweet == self }
  #   likes.map { |l| l.user }
  # end

  def likers
    users = []
    Like.all.each do |like|
      if like.tweet == self
        users << like.user
      end
    end
    users
  end

  def username
    user.username
  end
end
