Rails.application.routes.draw do
  get 'conversations/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/articles", to: "articles#index"
  get "/conversations", to: "conversations#index"
  get "/conversations/:id", to: "conversations#show"
  resources :conversations
end
