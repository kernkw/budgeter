require_relative "expense"
require_relative "income"

class Budget
  
  attr_reader :name

  def initialize(name)
    @name = name
    @expenses = {}
    @incomes = {}
  end

  def add_expense(expense)
    @expenses.merge!(expense.hash)
  end

  def add_income(income)
    @incomes.merge!(income.hash)
  end

  def number_to_dollars(number)
    dollars = sprintf "%.2f", number
    "$" + dollars
  end

  def calculate_stats
    sum_expense = @expenses.values.reduce(:+)
    @total_expense = number_to_dollars(sum_expense)

    sum_income = @incomes.values.transpose[0].reduce(:+)
    @total_income = number_to_dollars(sum_income)
      
    diff = sum_income - sum_expense

    @can_save = number_to_dollars(diff)
  end

  def display_stats
    puts "\n"
    puts "#{@name} Monthly Budget"
    puts "-------------------------"
    puts "Expense Total: #{@total_expense}"
    puts "Income Total: #{@total_income}"
    puts "\n"
    puts "You have #{@can_save} to use for savings!!"
    puts "Plus other cool stats to come :P"
    puts "\n"
  end
end
