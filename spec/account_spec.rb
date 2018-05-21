require './lib/account.rb'

describe Account do
    it 'adds money to an account' do
        account.deposit(5)
        expect(balance).to eq(10)
    end
end