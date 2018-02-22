Rails.application.routes.draw do

  resources :questions
  
  resources :advertisements

  resources :posts

  get 'about' => 'welcome#about'

  get 'posts' => 'posts#index'

  get 'posts_new' => 'posts#new'

  root 'welcome#index'
end
