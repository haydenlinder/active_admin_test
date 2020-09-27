Rails.application.routes.draw do
  resources :lines
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
