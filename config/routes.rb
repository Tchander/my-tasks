Rails.application.routes.draw do
  root 'project#index'
  get '/projects', to: 'project#index'
end
