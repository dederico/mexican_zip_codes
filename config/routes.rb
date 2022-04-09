Rails.application.routes.draw do
  resources :codigos, only: [:index, :show, :create, :update, :destroy]
end
