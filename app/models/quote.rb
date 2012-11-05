class Quote < ActiveRecord::Base
  attr_accessible :dividendPayDate, :dividendPerShare, :dividendYield, :exDividendDate
end
