Rails.application.routes.draw do
  resources :events
  devise_for :users

  resources :events do
    resources :attendees, only: [:new, :create, :destroy]
  end

  root 'events#index'

end
