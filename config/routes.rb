Rails.application.routes.draw do
  root to: 'pages#home'
  resources :lists, only: [:index, :show, :delete] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:index, :show, :delete]
  resources :movies, only: [:index]
end
