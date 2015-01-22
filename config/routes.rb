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
  get '/product_categories', to: 'product_categories#index', as: 'product_categories_path'
  resources :product_category_sizes
  get '/product_category_sizes', to: 'product_category_sizes#index', as: 'product_category_sizes_path'
  resources :product_group_add_on_lists
  get '/product_group_add_on_lists', to: 'product_group_add_on_lists#index', as: 'product_group_add_on_lists_path'
  resources :product_groups
  get '/product_groups', to: 'product_groups#index', as: 'product_groups_path'
  resources :product_add_on_lists
  get '/product_add_on_lists', to: 'product_add_on_lists#index', as: 'product_add_on_lists_path'
  resources :product_add_on_list_items
  get '/product_add_on_list_items', to: 'product_add_on_list_items#index', as: 'product_add_on_list_items_path'
  resources :product_add_ons
  get '/product_add_ons', to: 'product_add_ons#index', as: 'product_add_ons_path'
  resources :product_items
  get '/product_items', to: 'product_items#index', as: 'product_items_path'
  resources :product_item_types
  get '/product_item_types', to: 'product_item_types#index', as: 'product_item_types_path'
  resources :product_group_add_on_list_prices
  get '/product_group_add_on_list_prices', to: 'product_group_add_on_list_prices#index', as: 'product_group_add_on_list_prices_path'

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
