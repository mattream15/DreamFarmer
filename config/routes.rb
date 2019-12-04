Rails.application.routes.draw do
  resources :cannabis_plants
  resources :dreamfarmers
  devise_for :users, :controllers => {registrations: 'registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'application#welcome'
end
