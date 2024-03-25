Rails.application.routes.draw do
  root to: 'dinosaurs#index'

  resources :dinosaurs, only: [:index, :new, :create]  do
  end
end
