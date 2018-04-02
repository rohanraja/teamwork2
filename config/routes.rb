Rails.application.routes.draw do
  get 'components/show'

  get 'components/index'

  get "compList/:id", to: 'applications#component_list', as: "complist"

  resource :applications do
    resource :components
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
