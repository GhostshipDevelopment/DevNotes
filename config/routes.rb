Rails.application.routes.draw do
  resources :projects
  resources :notes
  devise_for :users

  root 'pages#home'
end
