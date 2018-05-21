require_relative 'account'

class Statement

  def initialize(account = BankAccount.new)
    @bank_account = account
  end

  def print_balance
    "balance £#{@bank_account.balance}"
  end
end