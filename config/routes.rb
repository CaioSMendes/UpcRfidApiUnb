Rails.application.routes.draw do
  root 'bluetoothsearches#index'
  resources :bluetoothsearches
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
