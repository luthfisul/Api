Rails.application.routes.draw do
  #resources :todos do
  # resources :items
  #end
  namespace 'API' do
  	resources :sessions
  	resources :signup
  end
end