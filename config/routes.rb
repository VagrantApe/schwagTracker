SchwagTracker::Application.routes.draw do
  resources :line_items
  resources :orders
  resources :product
end
