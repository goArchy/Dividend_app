class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.float :dividendYield
      t.float :dividendPerShare
      t.date :exDividendDate
      t.date :dividendPayDate

      t.timestamps
    end
  end
end
