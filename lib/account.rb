class Account

  attr_reader :balance

  def initialize(balance)
    @balance = balance
  end

  def deposit(monies)
    @balance += monies
  end

  def withdraw(monies)
    @balance -= monies
  end

end
