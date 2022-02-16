Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  mount GoodJob::Engine => 'good_job'
end
