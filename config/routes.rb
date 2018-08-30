Rails.application.routes.draw do

  resource :criterias, only: [:edit, :update]
  resources :events, only: :show
  resources :choices, only: [:index, :new, :create]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
