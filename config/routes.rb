Rails.application.routes.draw do
  resources :descriptions, except: [:new, :edit]
  resources :trips, except: [:new, :edit]
  resources :places, only: [:index, :show, :create]
  resources :tags, only: [:index]
  resources :profiles, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
