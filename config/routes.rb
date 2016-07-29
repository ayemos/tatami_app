Rails.application.routes.draw do
  root 'home#index'

  get 'home/index'

  get 'datasets/host_type_changed'

  resources :datasets

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
