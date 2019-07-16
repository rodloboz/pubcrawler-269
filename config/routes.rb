Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :pubs, only: %i[index new create]
end
