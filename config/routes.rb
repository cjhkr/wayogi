Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources:posts do
    resources:comments
  end
  
  post "posts/:id" => "comments#create"
  get 'search/search'
  post 'search/search' => "comments#create"
  get 'posts/profile/:id' => 'posts#profile'
end
