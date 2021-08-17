Rails.application.routes.draw do
  root 'home#index'
  resources :users
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'algoritm', to: 'users#algoritm'
  get 'usuarios', to: 'users#auser'
end
