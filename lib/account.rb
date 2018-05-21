class BankAccount

  attr_reader :account, :date


  def initialize
    @account = []
    @date = Time.new.strftime("%d-%m-%Y")
  end

  def deposit(amount)
    @account << amount
  end

  def withdraw(amount)
    @account << amount
  end

  def balance
    account.inject(0, :+)
  end

end