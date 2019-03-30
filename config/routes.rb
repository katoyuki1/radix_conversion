Rails.application.routes.draw do
  get '/binaries', to: 'binaries#question'
  post '/binaries', to: 'binaries#answer'
  get '/binaries/answer', to: 'binaries#answer'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
