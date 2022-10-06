Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#root'
  post '/webhooks/:source', to: 'webhooks#create'
end
