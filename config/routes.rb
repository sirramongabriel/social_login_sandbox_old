SocialLoginSandbox::Application.routes.draw do
  get "authentications/index"

  get "authentications/create"

  get "authentications/destroy"

  get "users/index"

  get "users/new"

  get "users/create"

  get "users/show"

  get "users/edit"

  get "users/update"

  get "users/destroy"

  devise_for :users

  get "static_pages/index"

  resources :indices

  root to: 'static_pages#index'
  # match ':controller(/:action(/:id))(.:format)'
end
