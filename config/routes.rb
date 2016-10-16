Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'sandbox', to: 'sandbox#index'


  namespace :api, defaults: { format: :json}  do 
    post '/sign_in', to: 'session#create'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
