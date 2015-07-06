Rails.application.routes.draw do
  
  get 'signup' => 'users#new'

  root 'pages#home'
  
  get 'pages/contact' => 'pages#contact'

  get 'pages/about' => 'pages#about'

  resources :users

end
