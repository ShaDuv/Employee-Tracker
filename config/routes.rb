Rails.application.routes.draw do
  root to: 'divisions#index'
  resources :divisions do
    resources :employees
  end
  resources :employees do
    resources :projects
  end
end
