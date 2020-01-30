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
end