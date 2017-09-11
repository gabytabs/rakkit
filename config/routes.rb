Rails.application.routes.draw do

  post 'user_token' => 'user_token#create'
  devise_for :users
  resources :blogs, only: [:show, :index]

end
