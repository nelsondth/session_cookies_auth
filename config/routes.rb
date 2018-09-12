Rails.application.routes.draw do
  get 'sessions/new', as: :login
  post 'sessions/create', as: :create_session
  delete 'sessions/destroy', as: :destroy_session
  resources :books
  resources :users
  get 'clickme/:id', to: 'users#send_message_now', as: :click_me
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
