Rails.application.routes.draw do
  root 'pages#home'
  get 'about' => 'pages#about'

  # article routes
  resources :articles
end
