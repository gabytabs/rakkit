Rails.application.routes.draw do

  resources :blogs, only: [:show, :index]

end
