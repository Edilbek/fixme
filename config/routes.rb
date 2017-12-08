Rails.application.routes.draw do

  devise_for :admin, controllers: {
    sessions: 'admin/sessions'
  }

  resources :problems do
    collection do
      match 'search' => 'problems#search', via: [:get, :post], as: :search
    end

    resources :comments
  end

  get 'all_problems', to: :all_problems, controller: 'problems'
  get 'all_in_progress_problems', to: :all_in_progress_problems, controller: 'problems'
  get 'all_resolved_problems', to: :all_resolved_problems, controller: 'problems'

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
