Rails.application.routes.draw do
  get 'blog/index'
  get 'projects/index'
  root 'home#index'
  get 'home/index'
end
