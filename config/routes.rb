Rails.application.routes.draw do
  resources :kategorijas
  devise_for :users
  resources :prijavas
  resources :posaos
  root 'posaos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
