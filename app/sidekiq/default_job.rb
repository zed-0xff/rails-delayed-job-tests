class DefaultJob 
  include Sidekiq::Job

  sidekiq_options queue: ENV['APP_QUEUE']
end
