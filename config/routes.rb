Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :create ]
  end

  resources :reviews, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
