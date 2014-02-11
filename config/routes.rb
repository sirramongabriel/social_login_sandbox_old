SocialLoginSandbox::Application.routes.draw do
  root to: 'static_pages#index'

  match '/auth/:provider/callback' => 'authentications#create'
  devise_for :users
  resources :authentications

  # match ':controller(/:action(/:id))(.:format)'
end
