class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :timestamp
      t.string :from_address
      t.string :to_address
      t.integer :amount

      t.timestamps
    end
  end
end
