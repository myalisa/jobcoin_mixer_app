class Api::UsersController < ApplicationController
  def index
    @user = User.all
    render 'index.json.jb'
  end


  def create
    user = User.new(
                    name: params[:name],
                    from_address: params[:from_address],
                    password_confirmation: params[:password_confirmation]
                    )
    if user.save
      render json: {message: "Success!"}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def show
    if params[:id] == "current"
      if current_user
        @user = current_user
         render 'show.json.jb'
      else
        render json: {message: "not logged in"}, status: :unauthorized
      end
    else
     @user = User.find(params[:id])
     render 'show.json.jb'
   end
   
  end

  def destroy
      user = User.find(params[:id])
      user.destroy
      render json: {message: "Successfully Destroyed User"}
  end

end
