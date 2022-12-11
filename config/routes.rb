Rails.application.routes.draw do
  
  root 'home#top'
  get '/post', to: 'posts#new'
  post '/post', to: 'posts#create'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#signup'
  
  #root 'sessions#index'
  # get "/category/:id" => "#category#:id"
  get    '/login',   to: 'sessions#new' #ログインするためのページを表す
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  get '/:category_name', to: 'show#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
end
