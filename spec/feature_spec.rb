require './lib/account'
require './lib/statement'

RSpec.describe 'User interaction' do

  it 'shows complete functionality of the bank account' do
    day = '13/03/2019'
    my_account = Account.new(0)
    allow(my_account).to receive(:date).and_return(day)
    my_account.deposit(1000)
    my_account.deposit(2000)
    my_account.withdraw(500)
    my_statement = Statement.new(my_account.transactions)
    my_statement.print(my_account.transactions)
    expect output('date || credit || debit || balance
  13/03/2019 ||  || 500.00 || 2500.00
  13/03/2019 || 2000.00 ||  || 3000.00
  13/03/2019 || 1000.00 ||  || 1000.00').to_stdout
  end

end
