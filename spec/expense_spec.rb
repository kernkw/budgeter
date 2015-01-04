require_relative 'expense'
require 'pry'

describe Expense do 
  before do
    @intial_amount = 400
    @expense = Expense.new("Car Payment", @intial_amount)
  end

  it "has a string representation" do
    expect(@expense.to_s).to eq("Car payment: $400.00")
  end 

  it "converts amount to dollars string" do
    expect(@expense.number_to_dollars(@intial_amount)).to eq("$400.00")
  end
end
