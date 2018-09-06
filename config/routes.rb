Rails.application.routes.draw do

  resource :criterias, only: [:edit, :update]
  resources :events, only: [:show, :index] do
    resources :votes, only: [:new, :create]
  end
  resources :choices, only: [:index, :new, :update, :show] do
    member do
      get :accept
      get :decline
    end
  end
  devise_for :users

  root to: 'pages#home'
end
