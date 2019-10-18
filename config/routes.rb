Rails.application.routes.draw do
  resources :restaurants do
    resources :comments
    resources :orders
    resources :dishes do
      resources :reviews
    end
  end
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
