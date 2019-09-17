Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items do
  end
  resources :tweets, only: [:index, :new, :create] do
  end
end
