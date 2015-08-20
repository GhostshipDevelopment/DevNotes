Rails.application.routes.draw do
  resources :projects
  resources :notes
  devise_for :users, :controllers => {:omniauth_callbacks => "callbacks"}

  root 'pages#home'
end
