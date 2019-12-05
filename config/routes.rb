Rails.application.routes.draw do
  resources :cannabis_plants do
    resources :harvests, only: [:create, :show]
    #random number generator in the create method
    #use harvested flag on the plant itself for that plant that is being saved
    #check to see if plant that is going to be harvested hasn't been harvested yet
    resources :markets, only: [:new, :create, :show, :index]
  end
  resources :grow_rooms
  devise_for :users, :controllers => {registrations: 'registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'application#welcome'
end
