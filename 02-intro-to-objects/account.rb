# snake_case
# CamelCase
# kebab-case

class BankAccount 
  # attr_accessor :balance
  attr_reader :type, :owner

  def initialize(owner, amount)
    @owner = owner
    @balance = amount
    @type = :savings
  end

  def same_owner?(other_account)
    self.owner == other_account.owner
  end

  def get_info
    puts "#{@owner}'s account has $#{@balance} remaining."
  end

  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
      puts "You withdrew #{amount} dollars. Have fun."
    else
      puts "Ruh roh, you do not have enough dollars for that."
    end
  end

  def deposit(amount)
    # @balance = @balance + amount
    @balance += amount
  end

  # def balance
  #   @balance
  # end

  # def balance=(amount)
  #   @balance = amount
  # end
end