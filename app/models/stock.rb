class Stock < ActiveRecord::Base
  attr_accessible :name, :ticker

  before_save { |stock| stock.ticker = ticker.downcase }

  validates :name, presence: true
  validates :ticker, presence: true, length: { maximum: 5 },
                     uniqueness: { case_sensitive: false }

end
