Blog::Application.routes.draw do

  resources :posts

  root to: "feed#index"

end
