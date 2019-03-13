require_relative 'date_stamp_module'

class Account

  attr_reader :balance, :transactions
  include DateStamp

  def initialize(balance)
    @balance = balance
    @transactions = []
  end

  def deposit(monies)
    @balance += monies
    @transactions << [date, format('%.2f',monies), " ", format('%.2f',@balance)]
  end

  def withdraw(monies)
    fail 'Insufficient funds' if @balance < monies

    @balance -= monies
    @transactions << [date, " ", format('%.2f',monies), format('%.2f',@balance)]
  end

end
