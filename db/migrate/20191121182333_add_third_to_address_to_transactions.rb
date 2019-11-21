class AddThirdToAddressToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :third_to_address, :string
  end
end
