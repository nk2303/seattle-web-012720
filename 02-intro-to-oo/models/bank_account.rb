class BankAccount
    attr_reader :account_id
    attr_accessor :balance, :interest, :name

    @@bank_accounts = [ ]

    def initialize(name_input, balance_input, interest_input, account_id_input)
    # binding.pry
        @name = name_input
        @balance = balance_input
        @interest = interest_input
        @account_id = account_id_input
        @@bank_accounts.push(self)
    end

    def self.whale
    # binding.pry
        sorted_accounts = bank_accounts.sort_by { |bank_account| bank_account.balance }
        sorted_accounts.last

    end

    def self.bank_accounts
        # binding.pry
        @@bank_accounts
    # binding.pry
    end

    def change_owner(s)
        ba = @@bank_accounts.find{ |bank_account| s.name == bank_account.owner_name }
        ba.owner_name = s
    end
end
