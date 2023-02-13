Rails.application.routes.draw do
  root "pages#home"
  get "about" , to:"pages#about"   
  get "signup" , to:"users#new"
  # resources :articles, only: [:show, :index , :new , :create , :edit, :update , :destroy ]
  resources :articles do 
    resources :comments
  end
  resources :students

  resources :users, except: [:new]
   

end
