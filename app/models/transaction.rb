class Transaction < ApplicationRecord
  belongs_to :user 


  def mixer
    old_ids = transactions.pluck(:user_id)
    mixed_ids = {}


    old_ids.each do |id|
      
    end
  end
end

