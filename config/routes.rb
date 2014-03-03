SchwagTracker::Application.routes.draw do
  resources :line_items
  resources :orders
  resources :product

  root 'welcome#index'
end
