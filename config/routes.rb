Rails.application.routes.draw do
  root 'items#index'
  resources :items, only: [:index, :show]
  resources :item_payment
end
