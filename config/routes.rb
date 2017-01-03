Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :temperatura

  post '/getTemperatura', to: 'temperatura#create', as: 'getTemperatura'

  root 'temperatura#historico'


end
