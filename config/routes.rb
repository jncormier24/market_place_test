Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :records
      resources :artists
      resources :users
    end
  end

  root to: "home#index"

  post "refresh", controller: :refresh, action: :create
  post "signup", controller: :signup, action: :create
  post "login", controller: :login, action: :create

  delete "login", controller: :login, action: :destroy
end
