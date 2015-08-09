Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'dashboard#index'

  get '/uslugi' => 'services#index', as: :services
  get '/kontakt' => 'contact#index', as: :contact
  get '/doswiadczenie' => 'experience#index', as: :experience
  get '/kadra' => 'crew#index', as: :crew
  get '/druk' => 'print#index', as: :print

  post '/deliver' => 'contact#deliver'
end
