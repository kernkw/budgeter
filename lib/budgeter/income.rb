class Income

  attr_accessor :amount, :type

  def initialize(name, amount = 0, type = "Salary")
    @name = name.capitalize
    @amount = amount
    @type = type
  end

  def hash
    hash = {}
    array = [@amount, @type]
    hash.store(@name, array)
    hash
  end

  def to_s
    "#{@name}'s #{@type} rate is #{number_to_dollars(@amount)}"
  end

  def number_to_dollars(number)
    dollars = sprintf "%.2f", number
    "$" + dollars
  end
end
