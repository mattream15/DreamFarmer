Rails.application.routes.draw do
  resources :cannabis_plants do
    resources :harvests, only: [:create, :show]
  end
  resources :markets
  resources :harvests do
      resources :markets
  end
  resources :light_sources, only: [:show, :index]
  devise_for :users, :controllers => { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'application#welcome'
end
