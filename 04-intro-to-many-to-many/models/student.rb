class Student
    attr_accessor :name, :height, :age, :favorite_song

    @@all = [ ]

    def initialize(name, height, age, favorite_song)
        @name = name
        @height = height
        @age = age
        @favorite_song = favorite_song
        @@all << self
    end



    def add_bank_account(balance, interest, account_id)
        ba = BankAccount.new(self, balance, interest, account_id)
    end

    def bank_accounts
        #bank_accounts
        #find the accounts that I own
        # gain access to global bank account
        # loop through
        # match 
        # return        
        # binding.pry
        BankAccount.bank_accounts.filter do |bank_account|
            self == bank_account.student
        end  
        # BankAccount.bank_accounts.
    end


    def self.all
        @@all
    end
end