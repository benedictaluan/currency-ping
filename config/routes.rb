Rails.application.routes.draw do
  root 'subscriptions#home'

  resources :subscriptions, path: 's', only: [:create, :home]
end
