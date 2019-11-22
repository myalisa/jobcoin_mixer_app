class Transaction < ApplicationRecord
  belongs_to :user

  def house_sum
    Transaction.sum(:amount) - Withdrawal.sum(:amount)
  end



end
