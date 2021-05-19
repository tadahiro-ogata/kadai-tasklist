Rails.application.routes.draw do
  root to: 'tasks#index'
  
<<<<<<< HEAD
  get 'users', to: 'users#index'
  
=======
>>>>>>> 233b73be775fddbe479d442da7bdde594450fdd9
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
   
<<<<<<< HEAD
  get 'signup', to: 'users#new'
  
  resources :tasks
  resources :users, only: [:index, :show, :create]
=======
    
    get 'signup', to: 'users#new'
    resources :tasks
>>>>>>> 233b73be775fddbe479d442da7bdde594450fdd9
end