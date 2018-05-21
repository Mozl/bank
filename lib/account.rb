class BankAccount

  attr_reader :account

  def initialize
    @account = []
  end

  def deposit(amount)
    @account << amount
  end

  def withdraw(amount)
  end

  def balance
    account.inject(0, :+)
  end
end