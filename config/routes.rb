Rails.application.routes.draw do
  resources :project
  resources :todo
  root 'project#index'
  get '/projects', to: 'project#index'
  post '/todos', to: 'todo#create'
  patch '/projects/:id/todo/:todo_id', to: 'todo#update'
end
