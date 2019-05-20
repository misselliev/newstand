# frozen_string_literal: true

Rails.application.routes.draw do
  resources :articles
  resources :users
  root 'articles#index'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
