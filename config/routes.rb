Rails.application.routes.draw do
  resources :plates
  root 'pages#home'
  get '/contact' => 'pages#contact'
  get '/about' => 'pages#about'
  resources :meals
  resources :movies

  resources :computers do
    resources :programs
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

end
