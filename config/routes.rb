Rails.application.routes.draw do
  root 'home#index'

  resources :nodes, only: [:show]

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post '/data', to: 'data#create'
    end
  end
end
