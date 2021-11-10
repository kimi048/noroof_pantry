Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get "about", to: "pages#about"
  resources :users
  resources :foods, only: [:index, :show, :edit, :update, :new, :create, :destroy]
  #post "users/new", to: 'users#create'
end
