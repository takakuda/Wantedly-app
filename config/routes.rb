Rails.application.routes.draw do
  root 'recruitments#index'
  resources :recruitments
  devise_for :campanies, controllers: {
    sessions:      'campanies/sessions',
    password:      'campanies/passwords',
    registrations: 'campanies/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
end
