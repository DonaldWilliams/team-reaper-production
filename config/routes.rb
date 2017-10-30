Rails.application.routes.draw do

  resources :messages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :matches, only: [:show,:index]
  resources :users
  resources :roles

  devise_for :users, controllers: {
    # For Recaptcha verification
    registrations: 'registrations',
    passwords:     'passwords'
  },
  path: '', path_names: {
    confirmation:  'verification',
    unlock:        'unlock',
    sign_in:       'login',
    sign_out:      'logout',
    sign_up:       'sign_up'
  }
end
