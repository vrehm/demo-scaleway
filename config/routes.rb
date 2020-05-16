Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Sidekiq Web UI, only for admins.
  require "sidekiq/web"
  # authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  # end  
end
