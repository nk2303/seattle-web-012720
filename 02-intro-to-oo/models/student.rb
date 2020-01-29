class Student
    attr_accessor :name, :height, :age, :favorite_song

    @@students = [ ]

    def initialize(name, height, age, favorite_song)
        @name = name
        @height = height
        @age = age
        @favorite_song = favorite_song
        @bank_accounts = [ ]
        @@students << self
    end

    def add_bank_account(balance, interest, account_id)
        #name, balance, interest, account_id
        # I need to somehow get s(the person creating this bank account)
        # self
        ba = BankAccount.new(self, balance, interest, account_id)
        @bank_accounts << ba
    end

    def self.students
        @@students
    end
end