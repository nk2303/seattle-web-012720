class Tweet
    @@all = [ ]

    attr_reader :user
    attr_accessor :message

    def initialize(message, user)
        @message = message
        @user = user
        @@all << self
    end

    def self.all
        @@all
    end

    def username
        # binding.pry
        user.username
    end
end