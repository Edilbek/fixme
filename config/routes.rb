# -*- encoding : utf-8 -*-
Rails.application.routes.draw do
  devise_for :users, skip: [:session, :password, :registration], controllers: {
    :omniauth_callbacks => "omniauth_callbacks"
  }
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    devise_for :users, skip: [:omniauth_callbacks]

    devise_for :admin, controllers: {
      sessions: 'admin/sessions'
    }
    resources :problems do
      collection do
        match 'search' => 'problems#search', via: [:get, :post], as: :search
      end

      resources :comments
    end

    namespace :admin do
      root to: 'home#index'
      resources :problems
      resources :users
    end

    get 'all_problems', to: :all_problems, controller: 'problems'
    get 'all_in_progress_problems', to: :all_in_progress_problems, controller: 'problems'
    get 'all_resolved_problems', to: :all_resolved_problems, controller: 'problems'

    root to: "home#index"

    resources :users do
      resources :problems
    end

    # namespace :api do
    #   namespace :v1 do
    #     resources :problems
    #     get 'all_problems', to: :all_problems, controller: 'problems'
    #   end
    # end
  end
  get '*path', to: redirect("/#{I18n.default_locale}/%{path}"), constraints: lambda { |req| !req.path.starts_with? "/#{I18n.default_locale}/" }
  get '', to: redirect("/#{I18n.default_locale}")
end
