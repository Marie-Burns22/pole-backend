Rails.application.routes.draw do
  resources :bookings
  devise_for :users
  resources :time_slots
  resources :courses
  resources :packs
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
