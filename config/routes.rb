Rails.application.routes.draw do
  resources :applications
  resources :components
  resources :applications do
    resources :components
  end
end
