# frozen_string_literal: true
Rails.application.routes.draw do
  resources :pictures, only: [:index, :show]
  resources :responses, only: [:index, :create, :update]
  delete '/attempts' => 'users#destroyattempts'
  post '/attempts' => 'users#postattempts'
  get '/attempts/:id' => 'responses#get_game'
  get '/attempts' => 'responses#get_games'
  get '/pictures/' => 'pictures#random'
  delete '/responses/:id', to: 'responses#destroy'
  # resources :responses, except: [:new, :edit]
  resources :names, except: [:new, :edit]
  resources :cards, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'

  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
