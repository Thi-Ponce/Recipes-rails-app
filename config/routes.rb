Rails.application.routes.draw do
  resources :foods
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"
   resources :public_recipes, only: [:index]
 
end
