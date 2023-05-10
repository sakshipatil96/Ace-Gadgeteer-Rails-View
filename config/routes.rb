Rails.application.routes.draw do
  root 'welcome#index'
  resources :articles
  resources :one_plus ,only: %i[index show]
  resources :apple
  resources :samsung
  resources :specifications
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
