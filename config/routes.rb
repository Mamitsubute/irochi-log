Rails.application.routes.draw do
  root 'events#index'
  get 'events/index'
  get 'events/show'
  get 'events/create'
  get 'events/delete'
  get 'events/edit'
  get 'users/index'
  get 'users/show'
  get 'users/create'
  get 'users/delete'
  get 'users/update'
end
