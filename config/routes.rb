Rails.application.routes.draw do
  resources :notes
  devise_for :users

  root 'pages#home'
end
