Rails.application.routes.draw do
  get 'home/index'

  resources :designs

  root 'home#index'
end
