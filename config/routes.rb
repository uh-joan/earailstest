Rails.application.routes.draw do



  resources :order_lines

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
  resources :user_types
  get '/user_types', to: 'user_types#index', as: 'user_types_path'

  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :top_categories
  get '/top_categories', to: 'top_categories#index', as: 'product_categories_path'
  resources :category_sizes
  get '/category_sizes', to: 'category_sizes#index', as: 'product_category_sizes_path'
  resources :group_addon_lists
  get '/group_addon_lists', to: 'group_addon_lists#index', as: 'product_group_add_on_lists_path'
  resources :groups
  get '/groups', to: 'groups#index', as: 'product_groups_path'
  resources :addon_lists
  get '/addon_lists', to: 'addon_lists#index', as: 'product_add_on_lists_path'
  resources :addon_list_items
  get '/addon_list_items', to: 'addon_list_items#index', as: 'product_add_on_list_items_path'
  resources :addons
  get '/addons', to: 'addons#index', as: 'product_add_ons_path'
  resources :items
  get '/items', to: 'items#index', as: 'product_items_path'
  resources :item_types
  get '/item_types', to: 'item_types#index', as: 'product_item_types_path'
  resources :group_addon_list_prices
  get '/group_addon_list_prices', to: 'group_addon_list_prices#index', as: 'product_group_add_on_list_prices_path'
  resources :item_sizes
  get '/item_sizes', to: 'item_sizes#index', as: 'product_item_sizes_path'


  resources :order_types
  get '/order_types', to: 'order_types#index', as: 'sales_order_types_path'
  resources :order_sources
  get '/order_sources', to: 'order_sources#index', as: 'sales_order_sources_path'
  resources :order_statuses
  get '/order_statuses', to: 'order_statuses#index', as: 'sales_order_statuses_path'
  resources :orders
  get '/orders', to: 'orders#index', as: 'sales_orders_path'




  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      # get 'products#index'
      resources :top_categories
      resources :users
      resources :category_sizes
      resources :products
    end
  end
end
