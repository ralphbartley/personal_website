Rails.application.routes.draw do
  resources :blog
  resources :projects
  get 'blog/index'
  get 'projects/index'
  root 'home#index'
  get 'home/index'
end
