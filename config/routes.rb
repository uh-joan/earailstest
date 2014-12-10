Rails.application.routes.draw do
  resources :products

  get 'password_resets/new'
  get 'password_resets/edit'
  get 'account_activations/edit'
  get 'sessions/new'

  root                'static_pages#home'
  # get    'help'    => 'static_pages#help'
  # get    'about'   => 'static_pages#about'
  # get    'contact' => 'static_pages#contact'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :product_categories
  resources :product_category_sizes
  resources :product_group_add_on_lists
  resources :product_groups
  resources :product_add_on_lists
  resources :product_add_on_list_items
  resources :product_add_ons

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      # get 'products#index'
      resources :product_categories
      resources :users
      resources :product_category_sizes
      resources :products
    end
  end
end
