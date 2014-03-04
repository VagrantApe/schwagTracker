SchwagTracker::Application.routes.draw do
  root 'welcome#index'
  resources :line_items
  resources :orders
  resources :products
end
