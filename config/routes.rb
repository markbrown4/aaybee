Rails.application.routes.draw do
  devise_for :users
  resources :designs

  root 'home#index'
end
