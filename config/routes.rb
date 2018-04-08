Rails.application.routes.draw do
  resources :testsuites
  resources :functionalities
  devise_for :users
  root to: "applications#index"
  resources :applications
  resources :components
  resources :applications do
    resources :components
  end
end
