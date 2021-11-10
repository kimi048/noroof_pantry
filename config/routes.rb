Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get "about", to: "pages#about"
  resources :users
  resources :foods, only: [:index, :show, :edit, :update, :new, :create, :destroy]
  #post "users/new", to: 'users#create'
  get 'signup', to: 'users#new'
  get 'login', to:'sessions#new'
  post 'login', to:'sessions#create'
  delete 'logout', to:'sessions#destroy'
end
