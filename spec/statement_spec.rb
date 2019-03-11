require './lib/statement'
require './lib/account'

RSpec.describe 'Statement' do
  let(:my_account) { Account.new(0) }

  it 'prints a statement in a specific format' do
    my_account.deposit(100)
    list = my_account.transactions
    my_statement = Statement.new(list)
    my_statement.print(list)
    expect output('date || credit || debit || balance
  11/03/2019 || 100 || 0 || 100').to_stdout
  end

end
