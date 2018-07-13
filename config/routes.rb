Rails.application.routes.draw do
  
  root 'pages#home'
  devise_for :users
  resources :form_messages
  get 'pages/contact'
  get 'pages/unauthorised'
  get 'pages/privacy_policy'
  get 'pages/legal'
  get 'pages/cookie_policy'
  #get 'pages/about'
end
