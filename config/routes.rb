Rails.application.routes.draw do

  devise_for :users
  resources :blogs, only: [:show, :index]

end
