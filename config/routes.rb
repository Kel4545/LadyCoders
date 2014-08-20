Rails.application.routes.draw do
 root "lady_coders#index"

 resources :registrations, only: [:new, :create]
 resource :sessions, only: [:new, :create, :destroy]
 resource  :users
 get "about" => "about#show"
 get "why" => "why#show"
 get "contact" => "contact#show"
end




