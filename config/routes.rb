Rails.application.routes.draw do
  resources :blog_posts
  resources :image_posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'home#index'

  get '/tutorials', :to => 'tutorial#index'
  get '/mana', :to => 'mana#index'
  get '/photography', :to => 'photography#index'
  get '/contact', :to => 'home#contact'
  get '/image_posts', :to => 'image_posts#index'
  get '/image_posts_consume', :to => 'image_posts#consume'

  get '/authenticate', :to => 'image_posts#authenticate'
  post '/authenticate', :to => 'image_posts#authenticate'


  get '/portfolio', :to => 'portfolio#show'
end
