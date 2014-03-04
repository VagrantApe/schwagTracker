SchwagTracker::Application.routes.draw do
  root 'welcome#index'
  resources :line_items
  resources :orders
  resources :products
<<<<<<< HEAD
=======

  root 'welcome#index'
>>>>>>> 97062c44edc73af7c96ca7c9aaa9a79e751d7d0a
end
