class Stock < ActiveRecord::Base
  attr_accessible :name, :ticker

  validates :name, presence: true
  validates :ticker, presence: true, length: { maximum: 5 }

end
