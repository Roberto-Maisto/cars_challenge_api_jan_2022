Rails.application.routes.draw do
  namespace :api do
    resources :cars, only: [:index]
    get 'cars', controller: :cars, action: :index
  end
end
