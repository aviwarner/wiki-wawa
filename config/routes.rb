Rails.application.routes.draw do

  get 'users/downgrade'

  devise_for :users
  resources :wikis
  resources :charges, only: [:new, :create]
  resources :collaborators, only: [:create, :destroy]

  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
