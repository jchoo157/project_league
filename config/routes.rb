Rails.application.routes.draw do

  devise_for :accounts

  root 'match_histories#new'

  get 'home' => 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'champions' => 'static_pages#champions'
  get 'champion_info' => 'static_pages#champion_info'

  resource :match_histories, only: [:new, :show, :create]

end
