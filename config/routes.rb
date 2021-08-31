Rails.application.routes.draw do
  resources :base_buddy
  resources :blog
  resources :projects
  root 'home#index'
end
