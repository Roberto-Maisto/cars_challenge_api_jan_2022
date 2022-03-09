Rails.application.routes.draw do
  namespace :api do
    resources :cars, only: %i[index create]
  end
end
