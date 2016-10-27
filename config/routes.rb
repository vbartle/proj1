Rails.application.routes.draw do
  root :to => "home#index"
  devise_for :trainers
  resources :trainers 
  patch 'capture', to: 'pokemon#capture'
  patch 'damage', to: 'pokemon#damage'
  post 'create', to: 'trainers#create'
end
