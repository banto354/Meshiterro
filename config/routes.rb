Rails.application.routes.draw do

  # For details on ther DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get '/about' => 'homes#about', as:'about'
  devise_for :users
  
  resources :post_images, only: [:new, :index, :show, :create, :destroy] do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  
end
