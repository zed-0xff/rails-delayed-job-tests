class SleepyJob
  include Sidekiq::Job

  def perform(*args)
    sleep rand(10)
  end
end
