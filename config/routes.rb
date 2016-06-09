Rails.application.routes.draw do
  root to: 'pages#home'

  resources :jobs, path: 'j', only: [:create, :home]
end
