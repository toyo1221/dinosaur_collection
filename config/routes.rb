Rails.application.routes.draw do
  devise_for :admins
  root to: 'dinosaurs#index'
  
  resources :dinosaurs, only: [:index, :new, :create, :show, :edit, :update,]
end