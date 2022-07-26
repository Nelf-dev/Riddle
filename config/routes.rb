Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users
  resources :riddles
  resources :scores

  post "/riddles/:id" => 'riddles#answer'
  get "/login" => "session#new"
  post "/login" => "session#create"
  delete "/login" => "session#destroy"
end
