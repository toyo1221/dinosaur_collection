Rails.application.routes.draw do
  devise_for :admins
  root to: 'dinosaurs#index'
  resources :dinosaurs do
    resources :topics, only: :index
  end
  resources :topics, only: [:new, :create, :destroy ]
end