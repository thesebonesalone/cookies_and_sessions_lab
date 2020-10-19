Rails.application.routes.draw do
  get 'products/root'

  root 'products#root'

  post '/add', to: 'products#add', as: 'add'

  resources :products, only: [:index]
end
