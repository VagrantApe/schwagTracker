SchwagTracker::Application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :orders do
    resources :line_items
  end
  resources :products

end
