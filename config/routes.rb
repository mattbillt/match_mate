Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end


  get "games", to: "games#index"
  get "games/:id", to: "games#show"

  resources :games do
    resources :groups, only: [:new, :create, :show, :edit, :update, :destroy, :index] do
      post 'join', on: :member
      post 'leave', on: :member
      delete 'kick/:user_id', to: 'groups#kick', as: 'kick', on: :member
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
