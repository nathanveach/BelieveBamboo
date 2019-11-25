Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'products#index'
  resources :products, only: [:index, :show]
  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'
  get '/checkout', to: 'orders#new'
  patch '/checkout', to: 'orders#create'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/shipping-information', to: 'customers#new', as: :customer
  post '/shipping-information', to: 'customers#create'
end
