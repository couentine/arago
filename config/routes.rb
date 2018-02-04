Rails.application.routes.draw do


  devise_for :users


  resources :comments

  resources :photos

    root 'users#show'

  get "pages/info"
  get 'users/show'
  get 'users/index'
  get 'users/:id', to: "users#profiles", as: "user"


end
