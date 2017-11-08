Rails.application.routes.draw do





  get 'password_resets/new'

  get 'password_resets/edit'

  root 'home#home'

  get 'sessions/new'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/home', to: 'home#home'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users

  resources :account_activations, only: [:edit]

  resources :password_resets,     only: [:new, :create, :edit, :update]

  resources :microposts,          only: [:create, :destroy,:edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
