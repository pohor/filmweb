Rails.application.routes.draw do
  resources :screenwriters
  resources :directors
  resources :genres
  resources :films

  root 'films#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
