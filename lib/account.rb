require 'date_stamp_module'

class Account

  attr_reader :balance, :transactions
  include DateStamp

  def initialize(balance)
    @balance = balance
    @transactions = []
  end

  def deposit(monies)
    @balance += monies
    @transactions << [date, monies, 0, @balance]
  end

  def withdraw(monies)
    if @balance < monies
      fail 'Insufficient funds'
    else
      @balance -= monies
    end
  end

end
