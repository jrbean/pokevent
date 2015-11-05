Rails.application.routes.draw do
  resources :events
  devise_for :users

  resources :events do
    resources :attendees, only: [:new, :create, :destroy]
  end

  get 'user/events' => 'attendances#show'

  root 'events#index'

end
