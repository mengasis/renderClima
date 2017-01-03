Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :temperatura

  post '/getTemperatura', to: 'temperatura#create', as: 'getTemperatura'

  get '/reset', to: 'temperatura#reset', as: 'reset'

  get '/actual', to: 'temperatura#actual', as: 'actual'

  get '/historico', to: 'temperatura#historico', as: 'historico'


  root 'temperatura#actual'


end
