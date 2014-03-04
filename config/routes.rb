SchwagTracker::Application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :line_items
  resources :orders
  resources :products

end
