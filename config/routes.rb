Rails.application.routes.draw do
  resources :applications do
    resources :components
  end
end
