Rails.application.routes.draw do
  devise_for :user
  #resources :todos do
  # resources :items
  #end
  namespace 'api' do
  	resources :sessions
  	resources :user
  end
end