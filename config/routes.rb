require 'sidekiq/web'
require 'sidekiq/cron/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq" # mount Sidekiq::Web in your Rails app
end
