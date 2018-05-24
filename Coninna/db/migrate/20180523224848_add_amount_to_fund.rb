class AddAmountToFund < ActiveRecord::Migration[5.0]
  def change
    add_column :funds, :amount, :integer
  end
end
