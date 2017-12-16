Rails.application.routes.draw do
  devise_for :users
  resources :employees
  resources :employee_statuses
  root to: "employees#index"
end
