Rails.application.routes.draw do
  get '/todos', to: 'todos#all'
  post '/todos/create', to: 'todos#create'
  put '/todos/update', to: 'todos#update'
  delete '/todos/delete', to: 'todos#delete'
end
