Rails.application.routes.draw do
  #resources :todos do
  # resources :items
  #end
  namespace 'api' do
  	resources :sessions
  	resources :user
  end
end