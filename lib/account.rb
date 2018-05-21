class BankAccount

  attr_reader :account, :date


  def initialize
    @account = []
    @date = Time.new.strftime("%d-%m-%Y")
  end

  def deposit(amount)
    @account << amount
    puts "£#{amount} has been added to your account."
  end

  def withdraw(amount)
    @account << amount
    puts "£#{amount} has been withdrawn from your account."
  end

  def balance
    account.inject(0, :+)
  end

end