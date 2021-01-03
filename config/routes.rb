Rails.application.routes.draw do
  #devise_for :users
  namespace :v1 do
  	resources :sessions, only: [:create, :destroy]
  	resources :user, only: [:index, :show, :create, :destroy, :update]
  end
end