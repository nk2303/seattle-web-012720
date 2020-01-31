class BankAccount
    attr_reader :account_id
    attr_accessor :balance, :interest, :student

    # @@bank_accounts = [ ]
    @@all = [ ]

    def initialize(student, balance, interest, account_id)
        @student = student
        @balance = balance
        @interest = interest
        @account_id = account_id
        @@all.push(self)
    end

    def self.whale
        sorted_accounts = bank_accounts.sort_by { |bank_account| bank_account.balance }
        sorted_accounts.last
    end

    def self.all
        @@all
    end


    # potential way to convert string into and object.
    # not really tested.
    def change_owner(s)
        ba = @@bank_accounts.find{ |bank_account| s.name == bank_account.owner_name }
        ba.owner_name = s
    end
end