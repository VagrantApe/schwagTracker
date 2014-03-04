SchwagTracker::Application.routes.draw do
  root to: "products#index"
  resources :line_items
  resources :orders
  resources :products
end
