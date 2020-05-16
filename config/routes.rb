Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  root 'items#index'
<<<<<<< HEAD
  resources :items, only: [:index, :show]
=======
  resources :users, only: [:index, :show, :edit, :update, :new]
  resources :items, only: [:index, :show, :new, :create] do
    resources :comment, only: :create
    resources :item_image, only: :new
    resources :brand, only: :new
    resources :shipping, only: :new
  end
>>>>>>> ef4b7de580a9aad2565c4402233b46d01b074f96
  resources :item_payment
end
