class Api::WithdrawalsController < ApplicationController
  


  def create
    @withdrawals = Withdrawal.withdraw(params[:user_id], params[:amount].to_i)

    render 'show.json.jb'
  end
end
