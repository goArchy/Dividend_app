class StocksController < ApplicationController
  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(params[:id])
    if @stock.save
      flash[:success] = "Stock Added successfully!"
      redirect_to @stock
    else
      render 'new'
    end
  end

  def index
  end

  def show
    @stock = Stock.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
