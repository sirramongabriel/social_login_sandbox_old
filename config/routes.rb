SocialLoginSandbox::Application.routes.draw do
  get "omniauth_callbacks/facebook"

  get "omniauth_callbacks/failure"

  get "sessions/new"

  root to: 'static_pages#index'

  match '/auth/:provider/callback' => 'authentications#create'
  devise_for :users
  resources :authentications

  # match ':controller(/:action(/:id))(.:format)'
end
