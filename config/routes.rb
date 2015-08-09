Rails.application.routes.draw do

  root 'pages#home'
  get 'home' => 'pages#home'
  get 'help' => 'pages#help'
  get 'about' => 'pages#about'
  get 'summoner_stats' => 'pages#summoner_stats'

end
