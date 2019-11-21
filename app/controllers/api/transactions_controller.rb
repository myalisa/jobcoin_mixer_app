class Api::TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
    render 'index.json.jb'
    
  end
  
  def create
    @transaction = Transaction.new(
                                    user_id: params[:user_id],
                                    timestamp: params[:timestamp],
                                    from_address: params[:from_address],
                                    to_address: params[:to_address],
                                    second_to_address: params[:second_to_address],
                                    third_to_address: params[:third_to_address],
                                    amount: params[:amount]
                                  )
    render 'show.json.jb'
  end


  def show
     @transaction = transaction.find(params[:id])
     render 'show.json.jb'
  end

  def update
    @transaction = Transaction.find(params[:id])

    @transaction.timestamp = params[:timestamp] || @transaction.timestamp
    @transaction.user_id = params[:user_id] || @transaction.user_id
    @transaction.from_address = params[:from_address] || @transaction.from_address
    @transaction.to_address = params[:to_address] || @transaction.to_address
    @transaction.second_to_address = params[:second_to_address] || @transaction.second_to_address
    @transaction.third_to_address = params[:third_to_address] || @transaction.third_to_address
    

    @transaction.save
    render 'show.json.jb'
  end

  def destroy
    @transaction = transaction.find(params[:id])
    @transaction.destroy
    render json: {message: "Successfully Destroyed transaction"}
  end


end
