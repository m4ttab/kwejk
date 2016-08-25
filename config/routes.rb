Rails.application.routes.draw do

  resources :mems do
    resources :comments
  	collection do
  		get 'my'
  		get 'inactive'
  end
end
  get 'home/index'
  root 'mems#index'

  devise_for :admins
  devise_for :users, controllers: { omniauth_callbacks: "acme/omniauth_callbacks", registrations: "acme/registrations"}
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
