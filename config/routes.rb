Rails.application.routes.draw do

  devise_for :accounts
  root 'static_pages#home'
  get 'home' => 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'champions' => 'static_pages#champions'

  resource :match

end
