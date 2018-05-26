Rails.application.routes.draw do
  resources :rooms
  get 'wubook/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
