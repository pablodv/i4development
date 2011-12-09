I4development::Application.routes.draw do
  devise_for :admin, :controllers => { :sessions => "admin/users/sessions" }
  devise_for :users

  namespace :admin do
    resources :users
  end

  resources :users

  root :to => 'home#show'
end
