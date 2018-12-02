Rails.application.routes.draw do
  get 'home/login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to:  'pages#show', id: 'home'
end
