Rails.application.routes.draw do
  
  root 'home#top'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#signup'
  #root 'sessions#index'
  # get "/category/:id" => "#category#:id"
  get    '/login',   to: 'sessions#new' #ログインするためのページを表す
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
end
