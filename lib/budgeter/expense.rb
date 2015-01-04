class Expense

  attr_accessor :name, :amount

  def initialize(name, amount=0)
    @name = name.capitalize
    @amount = amount
  end

  def hash
    hash = {}
    hash.store(@name, @amount)
    hash
  end

  def to_s
    "#{@name}: #{number_to_dollars(@amount)}"
  end

  def number_to_dollars(number)
    dollars = sprintf "%.2f", number
    "$" + dollars
  end
end
