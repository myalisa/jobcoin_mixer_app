class Withdrawal < ApplicationRecord

  #This ensures that the user is able to withdraw only up to the amount of jobcoin they have in their account, and it will distribute the jobcoin evenly to each to address

  #How do I determine which addressess the user gave to send money to, if there are multiple transactions?
  #I decided that the three addresses the user provided in their first transaction are where withdrawals are going to.


  def self.withdraw(user_id, amount)
    user = User.find_by(id: user_id)
    withdrawals = []
    if amount <= user.sum_amount
      withdrawals << Withdrawal.create(user_id: user_id, amount: amount / 3, to_address: user.transactions.first.to_address)
      withdrawals << Withdrawal.create(user_id: user_id, amount: amount / 3, to_address: user.transactions.first.second_to_address)
      withdrawals << Withdrawal.create(user_id: user_id, amount: amount / 3, to_address: user.transactions.first.third_to_address)
    end
    return withdrawals
  end
end
