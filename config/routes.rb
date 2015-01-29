Rails.application.routes.draw do

  resources :products

  get 'password_resets/new'
  get 'password_resets/edit'
  get 'account_activations/edit'
  get 'sessions/new'

  root 'application#index'
  # root                'static_pages#home'
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
  get '/top_categories', to: 'top_categories#index', as: 'top_categories_path'
  resources :category_sizes
  get '/category_sizes', to: 'category_sizes#index', as: 'category_sizes_path'
  resources :group_addon_lists
  get '/group_addon_lists', to: 'group_addon_lists#index', as: 'group_addon_lists_path'
  resources :groups
  get '/groups', to: 'groups#index', as: 'product_groups_path'
  resources :addon_lists
  get '/addon_lists', to: 'addon_lists#index', as: 'addon_lists_path'
  resources :addon_list_items
  get '/addon_list_items', to: 'addon_list_items#index', as: 'addon_list_items_path'
  resources :addons
  get '/addons', to: 'addons#index', as: 'addons_path'
  resources :items
  get '/items', to: 'items#index', as: 'items_path'
  resources :item_types
  get '/item_types', to: 'item_types#index', as: 'item_types_path'
  resources :group_addon_list_prices
  get '/group_addon_list_prices', to: 'group_addon_list_prices#index', as: 'group_addon_list_prices_path'
  resources :item_sizes
  get '/item_sizes', to: 'item_sizes#index', as: 'item_sizes_path'


  resources :order_types
  get '/order_types', to: 'order_types#index', as: 'order_types_path'
  resources :order_sources
  get '/order_sources', to: 'order_sources#index', as: 'order_sources_path'
  resources :order_statuses
  get '/order_statuses', to: 'order_statuses#index', as: 'order_statuses_path'
  resources :order_lines
  get '/order_lines', to: 'order_lines#index', as: 'order_lines_path'
  resources :orders
  get '/orders', to: 'orders#index', as: 'orders_path'




  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :top_categories
      resources :category_sizes
      resources :addons
      resources :addon_lists
      resources :addon_list_items
      resources :groups
      resources :group_addon_lists
    end
  end
end
