SchwagTracker::Application.routes.draw do
  devise_for :users, skip: :registrations
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end
  resources :users
  root 'welcome#index'

  resources :products
  resources :orders do
    resources :line_items
  end
end
