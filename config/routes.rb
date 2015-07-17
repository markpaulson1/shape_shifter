Rails.application.routes.draw do
  
  root 'sessions#new'

  get    '/login' => 'sessions#new'
  post   '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

resources :workouts, only: [:index, :show]
resources :users
resources :logs
resources :exercises, only: [:show]

end
