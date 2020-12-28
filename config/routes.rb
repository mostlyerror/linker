Rails.application.routes.draw do
  namespace :admin do
      resources :users

      root to: "users#index"
    end
  root to: "home#index"

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    unlocks: 'users/unlocks',
  }
end
