Rails.application.routes.draw do
  root 'reservation#index'
  get '/process', to: 'reservation#process_reservation'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
