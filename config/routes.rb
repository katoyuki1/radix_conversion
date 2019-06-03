Rails.application.routes.draw do
  root 'tops#index'

  get '/binaries', to: 'binaries#question'
  post '/binaries', to: 'binaries#answer'
  get '/binaries/answer', to: 'binaries#answer'

  get '/octals', to: 'octals#question'
  post '/octals', to: 'octals#answer'
  get '/octals/answer', to: 'octals#answer'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
