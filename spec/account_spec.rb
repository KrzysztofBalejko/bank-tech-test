require './lib/account'

RSpec.describe 'Account' do
  let(:my_account) { Account.new(0) }
  let(:monies) { 100 }

  it 'user can access the account' do
    expect(my_account.balance).to eq 0
  end

  it 'user can make a deposit' do
    expect { my_account.deposit(monies) }.to change { my_account.balance }.by 100
  end

  it 'user can withdraw monies' do
    my_account.deposit(monies)
    expect { my_account.withdraw(monies) }.to change { my_account.balance }.by(-100) 
  end

end
