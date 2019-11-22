class User < ApplicationRecord
  has_many :transactions

  # Calculate the user's total amount currently in house based on their transactions minus withdrawals:
  def sum_amount
    Transaction.where(user_id: id).sum(:amount) - Withdrawal.where(user_id: id).sum(:amount)
  end
end
