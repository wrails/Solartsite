Rails.application.routes.draw do
  
  root 'pages#home'

  get 'pages/contact'

  get 'pages/privacy_policy'

  get 'pages/legal'

  get 'pages/cookie_policy'

  get 'pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
