Rails.application.routes.draw do
  devise_for :users
  root to: "projects#index"
  resources :projects do
    resources :posts, only: [:new, :create, :index]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
