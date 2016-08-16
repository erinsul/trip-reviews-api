Rails.application.routes.draw do
  resources :trips, except: [:new, :edit]
  resources :descriptions, only: [:index, :show, :create, :destroy]
  resources :places, only: [:index, :show, :create]
  resources :tags, only: [:index]
  resources :profiles, only: [:index, :create, :update]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
