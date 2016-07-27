Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'home#index'

  get '/tutorials', :to => 'tutorial#index'
  get '/mana', :to => 'mana#index'
  get '/photography', :to => 'photography#index'
  get '/contact', :to => 'contact#show'

end
