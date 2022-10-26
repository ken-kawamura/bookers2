Rails.application.routes.draw do
  devise_for :users
  get '/home/about' => 'homes#about'
  root to: 'homes#top'
  resources :books do
    resources :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  resources :users, only:[:index, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end