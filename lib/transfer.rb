class Transfer
  # your code here
  attr_accessor :sender, :reciever, :amount, :status

  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @reciever.valid? && @sender.balance > @amount
  end

  def execute_transaction
    if self.valid? && @status == "pending"
      @sender.balance -= @amount
      @reciever.balance += @amount
      @status = "complete"
    else
      @status = "reject"
      return "Tranaction rejected. Please check your account balance."
    end
end
