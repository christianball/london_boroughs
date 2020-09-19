Rails.application.routes.draw do
  root 'home#page'

  resources :boroughs
end
