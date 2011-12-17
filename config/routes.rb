I4development::Application.routes.draw do
  devise_for :admin, :controllers => { :sessions => "admin/users/sessions" }
  devise_for :users

  namespace :admin do
    root :to => 'users#index'

    resources :users do
      member do
        put 'block_event'
        put 'unblock_event'
      end
    end

    resources :articles
  end

  resources :users

  root :to => 'home#show'
end
