Rails.application.routes.draw do
  resources :ponts, only: %i[index new create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "ponts#index"
end
