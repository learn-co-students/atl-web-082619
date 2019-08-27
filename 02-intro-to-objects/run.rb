require 'pry'
require_relative 'account'

# account1 = { owner: 'hanaa', balance: 1700000 }
# account2 = { owner: 'princeton', balanc: 1000 }

hanaa = BankAccount.new('hanaa', 500)
princeton = BankAccount.new('princeton', 400)
princeton.deposit(600)

princeton.same_owner?(hanaa)

puts 'Good Morning!'

binding.pry