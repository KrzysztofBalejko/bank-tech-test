require './lib/statement'

RSpec.describe 'Statement' do
  let(:my_account) { instance_double('Account', transactions: [["11/03/2019", "100.00", " ", "100.00"]]) }
  let(:my_statement) { Statement.new(my_account.transactions) }

  it 'prints a statement in a specific format' do
    my_statement.print(my_account.transactions)
    expect output('date || credit || debit || balance
  11/03/2019 || 100.00 ||  || 100.00').to_stdout
  end

end
