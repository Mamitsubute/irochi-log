Rails.application.routes.draw do
  root 'events#index'
  resources :events
  resources :user_pokemons
  resources :users
end
