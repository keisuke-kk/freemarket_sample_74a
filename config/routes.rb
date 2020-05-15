Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  root 'items#index'
<<<<<<< HEAD
  resources :items, only: [:index, :show]
=======
  resources :users, only: [:index, :show, :edit, :update, :new]
  resources :items, only: [:index, :show, :new] do
    resources :comment, only: :create
  end
>>>>>>> ef4b7de580a9aad2565c4402233b46d01b074f96
  resources :item_payment
end
