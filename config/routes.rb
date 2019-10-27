# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'nations/index'
  # get 'nations/show'
  resources :leagues, only: %i[index show]
  resources :nations, only: %i[index show]

  # get '/leagues', to: 'leagues#index'
  # get '/leagues/:id', to: 'leagues#show', id: /\d/

  root to: 'leagues#index'
end
