Rails.application.routes.draw do

  get 'users/update'

  devise_for :users
  resources :wikis
  resources :charges, only: [:new, :create, :downgrade]

  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
