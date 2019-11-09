Rails.application.routes.draw do
  resources :users
  resources :favorites
  get "/test", to: "meta_weather#test"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
