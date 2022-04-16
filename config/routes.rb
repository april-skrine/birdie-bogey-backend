Rails.application.routes.draw do
  resources :user_tee_times, only: [:index, :show, :create]
  resources :round_scores
  resources :users, only: [:index, :show, :update, :destroy, :create]
  resources :tee_times

  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#logout'
  get '/authorized_user', to: 'users#show'
end
