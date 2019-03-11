require './lib/account'

RSpec.describe 'Account' do
  let(:my_account) { Account.new(0) }

  it 'user can access the account' do
    expect(my_account.balance).to eq 0
  end
  
end
