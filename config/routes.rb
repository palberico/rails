Rails.application.routes.draw do
  resources :todos

get '/spaghettisauce', to: 'todos#index'
  root 'pages#index'
end
