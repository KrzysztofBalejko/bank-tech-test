require './lib/account'

RSpec.describe 'Account' do
  let(:my_account) { Account.new(0) }
  let(:monies) { 100 }
  let(:day) { '11/03/2019' }
  let(:default) { " " }

  it 'user can access the account' do
    expect(my_account.balance).to eq 0
  end

  it 'user can make a deposit' do
    expect { my_account.deposit(monies) }.to change { my_account.balance }.by 100
  end

  context 'money withdrawals' do

    it 'user can withdraw monies' do
      my_account.deposit(monies)
      expect { my_account.withdraw(monies) }.to change { my_account.balance }.by(-100)
    end

    it "user cannot withdraw if the balance is less then the requested amount" do
      my_account.deposit(monies)
      my_account.withdraw(50)
      expect { my_account.withdraw(monies) }.to raise_error 'Insufficient funds'
    end

  end

  context 'transaction information' do

    it 'upon deposit date, credit, debit amount and balance are recorded' do
      allow(my_account).to receive(:date).and_return(day)
      my_account.deposit(monies)
      expect(my_account.transactions[0]).to include(day, "100.00", default, "#{format('%.2f',my_account.balance)}")
    end

    it "upon withdrawals date, credit, debit amount and balance are recorded" do
      allow(my_account).to receive(:date).and_return(day)
      my_account.deposit(50)
      my_account.withdraw(25)
      expect(my_account.transactions[1]).to include(day, default, "25.00", "#{format('%.2f',my_account.balance)}")
    end

  end

end
