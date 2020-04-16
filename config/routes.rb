Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'products#index'
  resources :products, only: [:index, :show] do
    resources :reviews
  end
  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'
  get '/cart/checkout', to: 'orders#new', as: :checkout
  patch '/cart/checkout', to: 'orders#create'
  get '/about', to: 'pages#about'
  get '/shipping-info', to: 'pages#tracking'
  get '/refunds', to: 'pages#refunds'
  get '/shipping', to: 'customers#new', as: :customer
  post '/shipping', to: 'customers#create'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
  get 'order-received', to: 'pages#finished'
end
