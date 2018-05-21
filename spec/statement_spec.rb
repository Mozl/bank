require 'statement'

describe Statement do
  it 'prints balance' do
    statement = Statement.new
    expect(statement.print_balance).to eq "balance 0 GBP"
  end

  it 'prints credit' do
    statement = Statement.new
    expect(statement.print_deposit).to eq "credit 5 GBP"
  end

  it 'prints debit' do
    statement = Statement.new
    expect(statement.print_withdraw).to eq "debit -5 GBP"
  end

  it 'prints date' do
    statement = Statement.new
    date = Time.new.strftime("%d-%m-%Y")
    expect(statement.print_date).to eq(date)
  end

  it 'prints date, credit, debit, balance' do
    statement = Statement.new
    acc = BankAccount.new
    date = Time.new.strftime("%d-%m-%Y")
    credit = acc.deposit(10)
    balance = acc.balance
    expect(statement.transaction).to eq "#{date} || #{credit} || || #{balance}"
  end
end