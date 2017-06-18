Rails.application.routes.draw do
  root 'recruitments#index'
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
  resources :recruitments do
    resources :applies, only: [:create]
  end
  resources :users, only: [:show]
  get   'users/:id'   =>  'users#show'
  get   'campanies/:id'  =>  'campanies#show'
end
