Rails.application.routes.draw do
  resources :trucks

  resources :tacos, only: [:index, :show, :edit, :update, :new, :create]
  # get "/tacos", to: "tacos#index" as
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
