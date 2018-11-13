Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
   get 'signup' => 'users#new', :as => :signup
  get 'login' => 'sessions#new', :as => :login
  get 'show' => 'users#show', :as => :show
  get 'add_service' => 'services#addservice', :as => :add_service
  get 'destroy' => 'sessions#destroy', :as => :destroy
get 'allow' => 'services#allow', :as => :allow
get 'reject' => 'services#reject', :as => :reject
get 'remove_coupan' => 'services#remove_coupan', :as => :remove_coupan


   resources :users
   resources :sessions

   root 'users#new'
 
end
