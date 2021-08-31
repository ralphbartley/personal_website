Rails.application.routes.draw do
  resources :base_buddy
  resources :blog
  resources :projects
  get 'blog/index'
  get 'projects/index'
  root 'home#index'
  get 'home/index'
end
