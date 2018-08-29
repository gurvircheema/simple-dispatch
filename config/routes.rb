Rails.application.routes.draw do
  root 'home#index'
  resources :customers, only: [:index, :create, :update, :destroy]
end
