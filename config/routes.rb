Rails.application.routes.draw do
  resources :games
  devise_for :users, controllers: { registrations: "registrations" }

  resources :charges

  root 'home#index'

  resources :profiles


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
