Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :exercises, only: [:index]
      resources :workouts, only: [:index]
      resources :user, except: [:delete]
      resources :social, only: [:index, :create]
    end
  end

  mount ActionCable.server => '/cable'
end
