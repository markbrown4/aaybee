Rails.application.routes.draw do
  resources :designs

  root 'home#index'
end
