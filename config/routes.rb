Rails.application.routes.draw do
  get 'pages/about'

  get 'pages/contact'

  get 'pages/resources'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'home/index'
  root :to => 'home#index'
  resources :posts
  resources :categories
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/resources', to: 'pages#resources'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
