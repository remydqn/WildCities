Rails.application.routes.draw do

  resources :criterias, only: [:new, :create]
  resources :events, only: :show
  resources :choices, only: [:new, :create]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
