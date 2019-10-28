# frozen_string_literal: true

Rails.application.routes.draw do
  get 'players/index'
  get 'players/show'
  resources :leagues, only: %i[index show]
  resources :clubs, only: %i[index show]
  resources :nations, only: %i[index show]
  resources :card_types, only: %i[index show]

  # get '/leagues', to: 'leagues#index'
  # get '/leagues/:id', to: 'leagues#show', id: /\d/

  root to: 'leagues#index'
end
