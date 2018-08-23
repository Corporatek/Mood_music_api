# frozen_string_literal: true

Rails.application.routes.draw do
  resources :playlists
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

  post '/playlists' => 'playlists#create'
  delete '/playlists' => 'playlists#delete'

  post '/songs' => 'songs#create'
  patch '/songs' => 'songs#udpate'
end
