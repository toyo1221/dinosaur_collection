Rails.application.routes.draw do
  devise_for :admins
  root to: 'dinosaurs#index'
  resources :dinosaurs do
  end
  resources :topics, only: [:index, :new, :create] do
  end
end