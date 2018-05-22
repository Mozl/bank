require 'statement'

describe Statement do
  it 'prints balance' do
    statement = Statement.new
    expect(statement.print_balance).to eq "0"
  end

  it 'prints credit' do
    statement = Statement.new
    acc = BankAccount.new
    acc.deposit(5)
    expect(statement.print_deposit).to eq "5"
  end

  it 'prints debit' do
    statement = Statement.new
    expect(statement.print_withdraw).to eq "-5"
  end

  it 'prints date' do
    statement = Statement.new
    date = Time.new.strftime("%d-%m-%Y")
    expect(statement.print_date).to eq(date)
  end

  it 'prints credit transaction' do
    statement = Statement.new
    acc = BankAccount.new
    expect(statement.credit_transaction).to eq ([["#{subject.print_date} || #{subject.print_deposit} || || #{subject.print_balance}"]])
  end

  it 'prints debit transaction' do
    statement = Statement.new
    expect(statement.debit_transaction).to eq ([["#{subject.print_date} || || -5 || -5"]])
  end

  it 'checks transactions array' do
    statement = Statement.new
    acc = BankAccount.new
    acc.deposit(5)
    statement.credit_transaction
    statement.debit_transaction
    expect(statement.transactions).to include(["#{subject.print_date} || #{subject.print_deposit} || || #{subject.print_balance}"], ["#{subject.print_date} || || #{subject.print_withdraw} || #{subject.print_balance}"])
  end
end