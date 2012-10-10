require 'spec_helper'

describe Stock do

  before do
    @stock = Stock.new(name: "Apple", ticker: "aapl")
  end

  subject { @stock }

  it { should respond_to(:name) }
  it { should respond_to(:ticker) }

  describe "when name is not present" do
    before { @stock.name = " "}
    it { should_not be_valid }
  end

  describe "when ticker is not present" do
    before { @stock.ticker = " "}
    it { should_not be_valid }
  end

  describe "when ticker is too long" do
    before { @stock.ticker = "applebal"}
    it { should_not be_valid }
  end

  describe "when ticker is already taken" do
    before do
      stock_with_same_ticker = @stock.dup
      stock_with_same_ticker.save
    end

    it { should_not be_valid }
  end
end
