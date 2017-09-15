Rails.application.routes.draw do
  
  get 'users/new'

  get 'static_pages/home'
  get '/signup', to: 'users#new'
  
  root 'static_pages#home'
end
