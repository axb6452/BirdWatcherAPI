# frozen_string_literal: true

Rails.application.routes.draw do
  resources :sightings, except: %i[new edit]
  resources :examples, except: %i[new edit]
  # resources :users # => , # only: %i[index show]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  # get '/sightings', to: 'sightings#index'
  # get '/sightings/:id', to: 'sightings#show'
  # delete '/sightings/:id', to: 'sightings#destroy'
  # post '/sightings', to: 'sightings#create'
  # patch '/sightings/:id', to: 'sightings#update'
end
