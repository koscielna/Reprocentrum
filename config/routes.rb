Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'dashboard#index'

  get '/uslugi' => 'services#index', as: :services
  get '/sterowniki' => 'drivers#index', as: :drivers
  get '/kontakt' => 'contact#index', as: :contact

  post '/deliver' => 'contact#deliver'
end
