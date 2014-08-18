Rails.application.routes.draw do
 root "lady_coders#index"

 resources :registrations, only: [:new, :create]
 resource :session, only: [:new, :create, :destroy]

 get "signin" => "sessions#new", as: :signin
 post "signin" => "sessions#create"
 delete "signout" => "sessions#destroy", as: :signout
end



