Rails.application.routes.draw do
  resources :customers
  get '/brews/strongest', to: 'brews#strongest'
  resources :brews
  resources :orders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
