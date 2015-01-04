require_relative 'income'
require 'pry'

describe Income do 
  before do
    @name = "kyle"
    @amount = 1700
    @type = "bi-monthly"
    @income = Income.new(@name, @amount, @type)
  end

  it "has a string representation" do
    expect(@income.to_s).to eq("Kyle's bi-monthly rate is $1700.00")
  end 

  it "converts amount to dollars string" do
    expect(@income.number_to_dollars(@amount)).to eq("$1700.00")
  end
end
