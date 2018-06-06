Rails.application.routes.draw do
  get 'me' => 'profil#me'

  patch 'me' => 'profil#update_me'

  devise_for :users

  get 'pages/home'

  get 'profil' => 'profil#index'

  get 'user' => 'profil#show'

  root to: 'pages#home'

  resources :profils


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
