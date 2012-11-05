class StocksController < ApplicationController
  require 'yahoofinance'

  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(params[:stock])
    if @stock.save
      flash[:success] = "Stock Added successfully!"
      redirect_to @stock
    else
      render 'new'
    end
  end

  def index
    @stock = Stock.all
#    quote_std = YahooFinance::get_standard_quotes
#    quote_exd = YahooFinance::get_extended_quotes
  end

  def show
    @stock = Stock.find(params[:id])
  end

  def update
  end

  def destroy
  end

end
