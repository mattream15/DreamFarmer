Rails.application.routes.draw do
  resources :harvests do
    resources :markets, only: [:new, :index]
  end
  resources :cannabis_plants
  resources :grow_rooms
  devise_for :users, :controllers => {registrations: 'registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'application#welcome'
end
