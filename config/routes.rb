Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'
  resources :homes, only: [:index]
  resources :about_pages, only: [:index]
  resources :models_pages, only: [:index]
  resources :downloads, only: [:index]

end
