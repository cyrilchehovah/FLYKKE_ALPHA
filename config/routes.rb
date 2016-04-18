Rails.application.routes.draw do
  resources :posts
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'pages#home'

  post 'new_preview', to: 'posts#new_preview', as: 'new_preview'

  put 'posts/:id/flykke' => 'likes#flykke', as: :flykke

end
