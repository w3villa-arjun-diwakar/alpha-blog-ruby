Rails.application.routes.draw do
  root "pages#home"
  get "about" , to:"pages#about"   
  get "login" , to:'sessions#new'
  post "login" , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get "signup" , to:"users#new"
  resources :articles 
  resources :users, except: [:new]
  resources :categories, except: [:destroy]
   # resources :students

end
