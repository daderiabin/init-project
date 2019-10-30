# frozen_string_literal: true

Rails.application.routes.draw do
  resources :pages

  get '/static/:permalink', to: 'pages#permalink', as: 'permalink'

  resources :nations, only: %i[index show]
  resources :card_types, only: %i[index show]
  resources :leagues, only: %i[index show]
  resources :clubs, only: %i[index show]
  resources :players, only: %i[index show] do
    collection do
      get 'search_results'
    end
  end

  root to: 'players#index'
end
