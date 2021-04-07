Rails.application.routes.draw do
  root to: 'pages#home'
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:index, :show, :delete]
end
