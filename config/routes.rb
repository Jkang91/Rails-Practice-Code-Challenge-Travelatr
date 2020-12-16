Rails.application.routes.draw do
  resources :posts, except: [:destroy]
  patch "/posts/:id/likes", to: "posts#increase_like", as: "like_post"
  resources :bloggers
  resources :destinations, only: [:index, :show]
 
end
