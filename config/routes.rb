Rails.application.routes.draw do

  devise_for :admin, controllers: {
    sessions: 'admin/sessions'
  }

  devise_for :users
  root to: "home#index"

  resources :users do
    resources :problems
  end

  namespace :admin do
    root to: 'home#index'
    resources :problems
  end
end
