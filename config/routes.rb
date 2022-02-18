require 'que/web'

Rails.application.routes.draw do
  mount Que::Web => "/que"

  get 'welcome/index'
  root 'welcome#index'
end
