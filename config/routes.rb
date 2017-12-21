Rails.application.routes.draw do
  devise_for :users
  resources :candidates
  resources :phases
  root to: "phases#index"
end
