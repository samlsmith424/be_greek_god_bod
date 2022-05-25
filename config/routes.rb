Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'exercises/index'
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
