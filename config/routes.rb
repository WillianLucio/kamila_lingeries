Rails.application.routes.draw do
  namespace :backoffice do
    get 'categories/index'
    get 'categories/new'
    get 'categories/create'
    get 'categories/edit'
    get 'categories/update'
    get 'categories/destroy'
  end
  namespace :backoffice do
    resources :dashboards, only: :index
  end
  devise_for :users
  root 'home#index'
end
