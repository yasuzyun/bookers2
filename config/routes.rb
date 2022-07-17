Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root  'homes#top'
  get "/home/about" => "homes#about"
  devise_for :users
  
  
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy] 
  
  resources :users, only: [:index, :show, :edit, :update]

end
