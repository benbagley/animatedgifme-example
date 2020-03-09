Rails.application.routes.draw do
  devise_for :users

  resources :gifs

  get '*tag', to: 'gifs#random', as: :random_gif
  root to: 'gifs#index'

end
