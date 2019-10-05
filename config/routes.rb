Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  ActiveAdmin.routes(self)
  
  namespace :api do
    namespace :v1 do
      resources :time_slots
      resources :bookings
      resources :courses
      resources :packs  
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
