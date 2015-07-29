Rails.application.routes.draw do
  
  

  get 'signup' => 'users#new'

  root 'pages#home'
  
  get 'contact' => 'pages#contact'

  get 'about' => 'pages#about'

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'


  resources :users
  resources :account_activations, only: [:edit] 

end
