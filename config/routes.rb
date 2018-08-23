# frozen_string_literal: true

Rails.application.routes.draw do
  resources :songs
  resources :playlists, only: %i[index show update create]
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  post '/playlists/:id' => 'playlists#create'
  patch '/playlists/:id' => 'playlists#update'
  delete '/playlists/:id' => 'playlists#delete'
  get '/playlists/:id' => 'playlists#index'

  post '/songs' => 'songs#create'
  patch '/song/:id' => 'songs#update'
end
