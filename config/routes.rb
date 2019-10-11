Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'
  resources :homes

  get 'about', to: 'homes#about'
  get 'themodels', to: 'homes#themodels'
  get 'downloads', to: 'homes#downloads'

end
