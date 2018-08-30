# -*- encoding : utf-8 -*-
Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  scope "/:locale", locale: /#{I18n.available_locales.join("|")}/, defaults: {locale: "ru"}  do
    root to: "home#index"

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
  match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), :via => [:get, :post]
  match '', to: redirect("/#{I18n.default_locale}"), :via => [:get, :post]
end
