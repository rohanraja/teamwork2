Rails.application.routes.draw do

  get "newComp/:id", to: 'components#new'

  get "compList/:id", to: 'applications#component_list', as: "complist"

end
