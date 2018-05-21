require 'statement'

describe Statement do
  it 'prints balance' do
    statement = Statement.new
    expect(statement.print_balance).to eq "balance £0"
  end

  it 'prints date' do
    statement = Statement.new
    expect(statement.print_deposit).to eq "credit £5"
  end
end