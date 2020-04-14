class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = reciever
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid? && @sender.balance > @amount
  end

  def execute_transaction
    if self.valid? && @status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "reject"
      return "Tranaction rejected. Please check your account balance."
    end
end

def reverse_transfer
  if @status == "complete"
    @receiver.balance -= @amount
    @sender.balance += @amount
    @status = "reversed"
  end
end
end
