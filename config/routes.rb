Rails.application.routes.draw do
  resources :applications
  resources :applications do
    resources :components
  end
end
