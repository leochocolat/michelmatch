Rails.application.routes.draw do
  get 'me' => 'profil#me'

  patch 'me' => 'profil#update_me'

  devise_for :users

  get 'pages/home'

  get 'profil' => 'profil#index'

  get 'profil/:id' => 'profil#show', as: :profil_show

  root to: 'pages#home'

  resources :relationships, only: [:create, :destroy]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
