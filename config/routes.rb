Rails.application.routes.draw do
  resources :videos
  devise_for :users do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "videos#index"
end
