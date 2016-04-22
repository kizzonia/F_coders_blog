Rails.application.routes.draw do

  devise_for :users
   resources :products

  get 'contact/index'
  resources :posts do
 	resources :comments
 end
 devise_for :admins
 get "posts" => "posts#index", :as => 'blog'
root 'website#index'
end
