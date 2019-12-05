Rails.application.routes.draw do
  get 'harvests/grouped_market_offers', to: 'harvest#market_offers'
  resources :cannabis_plants do
    resources :harvests, only: [:create, :show]
    resources :markets
  end
  resources :grow_rooms
  devise_for :users, :controllers => {registrations: 'registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'application#welcome'
end
