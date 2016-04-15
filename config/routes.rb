Rails.application.routes.draw do
  get 'contact/index'

  devise_for :users
 resources :posts do
 	resources :comments
 end
 root "posts#index"

end
