Rails.application.routes.draw do
  root 'events#index'
  resources :events
  resources :user_pokemons, only: [:new, :create, :destroy, :edit]
  resources :users
end
