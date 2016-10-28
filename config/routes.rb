Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'sandbox', to: 'sandbox#index'


  namespace :api, defaults: { format: :json}  do 
    match '/signin', to: 'session#create', via: :post
    match '/signup', to: 'registration#create', via: :post
    match '/users/dashboard', to: 'users#dashboard', via: :get end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
