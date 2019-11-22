Rails.application.routes.draw do

  namespace :api do
    get '/users' => 'users#index'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'

    get '/transactions' => 'transactions#index'
    post '/transactions' => 'transactions#create'
    get '/transactions/:id' => 'transactions#show'
    patch '/transactions/:id' => 'transactions#update'

    post '/withdrawals' => 'withdrawals#create'
  end


    
end
