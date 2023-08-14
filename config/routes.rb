Rails.application.routes.draw do
  root "conversations#index"
  # get "/conversations", to: "articles#index"
  resources :conversations
end
