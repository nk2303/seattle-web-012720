#pulling in resource (rubygems.org), and uses in our program
require 'pry'
require_relative './models/bank_account.rb'
require_relative './models/notebook.rb'
require_relative './models/student'

s = Student.new("Soundarya", 5.7, 30, "all I ever wanted")
h = Student.new("Hal", 5.7, 30, "Happy Birthday")

bank_accounts = [{owner_name: s, balance: 100, interest: 0.05, account_num: 1111},
                 {owner_name: h, balance: 1000, interest: 0.05, account_num: 2222},
                 {owner_name: s, balance: 3000, interest: 0.05, account_num: 3333},
                 {owner_name: h, balance: 10000, interest: 0.05, account_num: 4444}
]

# bank_account_objs = 
bank_accounts.map do |bank_account|
    # BankAccount.new(bank_account)
    BankAccount.new(bank_account[:owner_name], 
        bank_account[:balance], 
        bank_account[:interest], 
        bank_account[:account_num])
end

notebooks = [ 
    {page_count: 200 , owner_name: "Soundarya", material: "paper"},
    {page_count: 200 , owner_name: "Hal", material: "paper"}, 
    {page_count: 200 , owner_name: "Lucy", material: "paper"},
    {page_count: 200 , owner_name: "Jonny", material: "paper"},
    {page_count: 200 , owner_name: "Jazz", material: "paper"},   
    {page_count: 200 , owner_name: "Gabriel", material: "paper"}, 
    {page_count: 200 , owner_name: "Matt", material: "paper"}
]

notebooks.map do |notebook|
    Notebook.new(notebook)
    # Notebook.new(notebook[:page_count], notebook[:owner_name], notebook[:material])
end

binding.pry