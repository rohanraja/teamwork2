Rails.application.routes.draw do
  get 'dashboard/home'

  resources :checklistitems
  resources :checklists
  resources :tasks
  resources :testcases
  resources :testsuites
  resources :functionalities
  devise_for :users
  root to: "applications#index"
  resources :applications
  resources :components
  resources :applications do
    resources :components
  end

  get "dashboard" => "dashboard#home"
end
