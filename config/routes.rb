Rails.application.routes.draw do
  root to: 'dinosaur#index'

  resources :dinosaurs, only: :index do
  end
end
