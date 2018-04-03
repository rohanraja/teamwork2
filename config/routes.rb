Rails.application.routes.draw do
  root to: "applications#index"
  resources :applications
  resources :components
  resources :applications do
    resources :components
  end
end
