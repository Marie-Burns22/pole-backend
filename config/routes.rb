Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }

  ActiveAdmin.routes(self)
  
  namespace :api do
    namespace :v1 do
      resources :article_comments
      resources :students
      resources :awards
      resources :articles
      resources :time_slots
      resources :bookings
      resources :courses
      resources :packs  
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
