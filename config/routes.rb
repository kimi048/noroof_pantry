Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get "about", to: "pages#about"
  get "home", to: "pages#home"
  get "date", to: "pages#date"
  get "foods/wwindex", to:"foods#wwindex"
  resources :foods, only: [:index, :show, :edit, :update, :new, :create, :destroy]
  get "foods/:when/:which", to: "foods#whenwhich"
  post "foods/:when/:which", to:"foods#wwcreate"
  get "users/all/:date", to:"users#allusersfoods"
  resources :users
  #ingredients
  get 'ingredients/index'
  get 'ingredients/show'
  get 'ingredients/:id/edit', to:"ingredients#edit"
  patch 'ingredients/:id', to:"ingredients#update"
  #post "users/new", to: 'users#create'
  get 'signup', to: 'users#new'
  get 'login', to:'sessions#new'
  post 'login', to:'sessions#create'
  delete 'logout', to:'sessions#destroy'

  #unmatched route
  get '*unmatched_route', to: 'application#unmatched'
end
