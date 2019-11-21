class AddSecondToAddressToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :second_to_address, :string
  end
end
