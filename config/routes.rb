Rails.application.routes.draw do
  resources :events
  devise_for :users

  resources :events do
    resources :attendees, only: [:new, :create, :destroy]
  end

  get 'user/events' => 'attendances#show'

  post 'events/:id/attendee_mail' => 'mailers#attendee_mail'
  post 'events/:id/organizer_mail' => 'mailers#organizer_mail'

  root 'events#index'

end
