Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  post 'auth_user' => 'authentication#authenticate_user'
  get 'sandbox', to: 'sandbox#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
