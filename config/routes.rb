Rails.application.routes.draw do
  root 'pages#home'

  resources :subscriptions, path: 's', only: [:create]
end
