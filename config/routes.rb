Rails.application.routes.draw do
  
  

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'signup' => 'users#new'

  root 'pages#home'
  
  get 'contact' => 'pages#contact'

  get 'about' => 'pages#about'

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'


  resources :users
  resources :account_activations, only: [:edit] 
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create, :destroy]

end
