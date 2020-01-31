class User

    @@all = [ ]

    attr_accessor :username

    def initialize(username)
        @username = username
        @@all << self
    end

    def self.all
        @@all
    end

    def post_tweet(message)
        Tweet.new(message, self)
    end

    def tweets
        Tweet.all.filter do |tweet|
            self == tweet.user
        end
    end

    def like_tweet(tweet)
        # binding.pry
        Like.new(tweet, self)
    end

    def likes
        Like.all.select do |like|
            like.user == self
        end
    end

    def liked_tweets
        likes.map do |like|
            like.tweet
        end     
    end

    def unlike_tweet(tweet)
        likes
        binding.pry
    end
end