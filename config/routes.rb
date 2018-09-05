Rails.application.routes.draw do

  get '/go', to: 'pages#go'
  resource :criterias, only: [:edit, :update]
  resources :events, only: [:show, :index] do
    get 'votes/new'
  end
  resources :choices, only: [:index, :new, :update, :show] do
    member do
      patch :accept
      patch :decline
    end
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
