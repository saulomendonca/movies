Rails.application.routes.draw do
  resources :movies do
    resources :roles
  end
  resources :people
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
