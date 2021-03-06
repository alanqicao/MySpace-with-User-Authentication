Rails.application.routes.draw do
  namespace :api do
    resources :users do
      resources :posts
    end
  end
  mount_devise_token_auth_for 'User', at: 'api/auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
