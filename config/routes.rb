Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'result#start'
  get '/result/new', to: 'result#new'
  post '/result/create', to: 'result#create'
  get '/result/finish', to: 'result#show'
end
