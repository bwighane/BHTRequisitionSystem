Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      resources :users
      resources :roles
      resources :departments
      resources :donors
      resources :items
      resources :district_types
      resources :districts
      resources :sites
      resources :projects
      resources :notifications
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
