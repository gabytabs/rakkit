Rails.application.routes.draw do

  post 'blog_token' => 'blog_token#create'
  post 'user_token' => 'user_token#create'

  devise_for :users

  resources :blogs
  resources :users

end
