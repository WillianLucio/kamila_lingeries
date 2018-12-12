Rails.application.routes.draw do
  namespace :backoffice do
    resources :dashboards, only: :index
  end
  devise_for :users, skip: :registration
  root 'home#index'
end
