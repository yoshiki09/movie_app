Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations",
  }
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show] do
     resource :relationships, only: [:create, :destroy]
     get :follows, on: :member
     get :followers, on: :member
  end
  root to: "users#index"
end
