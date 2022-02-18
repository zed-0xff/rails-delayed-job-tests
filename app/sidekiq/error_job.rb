class ErrorJob
  include Sidekiq::Job

  def perform(*args)
    raise 'boo'
  end
end
