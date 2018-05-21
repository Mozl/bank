require './lib/account.rb'

describe BankAccount do
    it 'adds money to an account' do
        account = BankAccount.new
        account.deposit(10)
        expect(account.balance).to eq(10)
    end

    it 'withdraws money from an account' do
        account = BankAccount.new
        account.deposit(100)
        account.withdraw(5)
        expect(account.balance).to eq(95)
    end
end