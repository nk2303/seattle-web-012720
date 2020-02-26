Rails.application.routes.draw do
    resources :orchestras, only: [:new, :create, :show, :index]

    resources :members 
end
