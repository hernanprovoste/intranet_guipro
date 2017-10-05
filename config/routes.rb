Rails.application.routes.draw do
  
  get 'sessions/new'

  #get 'users/new'

  get 'static_pages/home'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  root 'static_pages#home'
  resources :users
  
  #rails s -b $IP -p $PORT
end
