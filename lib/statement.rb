require_relative 'account'

class Statement

  attr_accessor :transactions

  def initialize(account = BankAccount.new)
    @bank_account = account
    @transactions = []
  end

  def print_balance
    "#{@bank_account.balance}"
  end

  def print_deposit
    "#{@bank_account.deposit(5).join(",")}"
  end

  def print_withdraw
    "#{@bank_account.withdraw(-5).join(",")}"
  end

  def print_date
    Time.new.strftime("%d-%m-%Y")
  end

  def credit_transaction
    "#{print_date} || #{print_deposit} || || #{print_balance}"
  end

end