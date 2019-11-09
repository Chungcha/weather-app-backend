Rails.application.routes.draw do
  resources :users
  resources :favorites
  get "/test", to: "meta_weather#test"
  post "/search", to: "meta_weather#search"
  post "/location", to: "meta_weather#location"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
