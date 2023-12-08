Rails.application.routes.draw do
  devise_for :users


  root to: "pages#home"

  get "games", to: "games#index"
  get "games/:id", to: "games#show"
  get 'profile', to: 'users#show', as: 'profile'

  resources :games do
    resources :groups, only: [:new, :create, :show, :edit, :update, :destroy, :index] do
      resources :chatrooms, only: :show do
        resources :messages, only: :create
      end

      post 'join', on: :member
      post 'leave', on: :member
      delete 'kick/:user_id', to: 'groups#kick', as: 'kick', on: :member
    end
  end

  resources :users, only: [:show, :edit, :update] do
    member do
      delete 'delete_profile_picture'
    end
  end


  resources :teams, only: [:show, :index]
  resources :groups, only: [:index]

  get "up" => "rails/health#show", as: :rails_health_check
end
