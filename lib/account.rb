class Account

  attr_reader :balance

  def initialize(balance)
    @balance = balance
  end

  def deposit(monies)
    @balance += monies
  end

  def withdraw(monies)
    if @balance < monies
      fail 'Insufficient funds'
    else
      @balance -= monies
    end
  end

end
