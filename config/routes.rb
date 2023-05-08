Rails.application.routes.draw do
  # For details on ther DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  devise_for :users
  
  resources :post_images, only: [:new, :index, :show, :create, :destroy]
  get '/about' => 'homes#about', as:'about'
  
  
end
