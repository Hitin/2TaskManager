Rails.application.routes.draw do
  root :to => "web/boards#show"

  namespace :api do
    namespace :v1 do
      resources :tasks, only: [:index, :show, :create, :update, :destroy]
    end
  end
  
  namespace :admin do
    resources :users
  end

  scope module: :web do
    resource :board, only: :show
    resource :session, only: [:new, :create, :destroy]
    resources :developers, only: [:new, :create]
  end
  
end
