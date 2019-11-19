Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
  
  namespace :api do
    namespace :v1 do
      resources :videos
      resources :blurbs
      resources :testimonials
      resources :article_comments
      resources :awards
      resources :articles
      resources :time_slots
      resources :courses 
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
