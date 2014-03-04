SchwagTracker::Application.routes.draw do
  resources :line_items
  resources :orders
  resources :products

  root 'welcome#index'
end
