Rails.application.routes.draw do

  devise_for :admin, controllers: {
    sessions: 'admin/sessions'
  }

  resources :problems do
    collection do
      match 'search' => 'problems#search', via: [:get, :post], as: :search
    end
  end

  devise_for :users
  root to: "home#index"

  resources :users do
    resources :problems
  end

  namespace :admin do
    root to: 'home#index'
    resources :problems
    resources :users
  end
end
