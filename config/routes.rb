Rails.application.routes.draw do
  # Other routes

  namespace :admin_area do
    get 'login', to: 'sessions#new', as: :admin_login
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    get 'dashboard', to: 'registrations#index'

    resources :event_sessions, only: [:new, :create, :index, :edit, :update]
  end

  root "registrations#new"
  resources :registrations, only: [:new, :create]
  get 'confirmation', to: 'registrations#confirmation'
end




