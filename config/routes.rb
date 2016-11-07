Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :todo

  get '/todo/:id/delete', to: 'todo#delete'

  post '/todo/:id/save', to: 'todo#save'

  get '/todo/:id/finish/:finished', to: 'todo#finish'

  root 'todo#index'

end
