require_relative 'account'

class Statement

  attr_accessor :transactions

  def initialize(account = BankAccount.new)
    @bank_account = account
    @transactions = []
  end

  def print_balance
    "balance #{@bank_account.balance} GBP"
  end

  def print_deposit
    "credit #{@bank_account.deposit(5).join(",")} GBP"
  end

  def print_withdraw
    "debit #{@bank_account.withdraw(-5).join(",")} GBP"
  end

  def print_date
    Time.new.strftime("%d-%m-%Y")
  end

  def transaction
  end


end