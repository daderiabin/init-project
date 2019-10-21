# frozen_string_literal: true

Rails.application.routes.draw do
  get '/leagues', to: 'leagues#index'
  get '/leagues/:id', to: 'leagues#show', id: /\d/

  root to: 'leagues#index'
end
