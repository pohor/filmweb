Rails.application.routes.draw do
  resources :origins
  devise_for :users
  resources :screenwriters
  resources :directors
  resources :genres
  resources :films do
    resources :reviews
  end

  root 'films#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
