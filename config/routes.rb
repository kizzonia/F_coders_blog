Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins
  devise_for :users
resources :products# does not match '/products' via POST

  get 'contact/index'
  resources :posts do
 	resources :comments
 end
 get "posts" => "posts#index", :as => 'blog'
root 'website#index'
end
