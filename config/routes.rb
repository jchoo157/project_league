Rails.application.routes.draw do

  root 'pages_controller#home'
  get 'home' => 'pages_controller#home'
  get 'stats' => 'pages_controller#stats'
  get 'help' => 'pages_controller#help'
  get 'about' => 'pages_controller#about'

end
