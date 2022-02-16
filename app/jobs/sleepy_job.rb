class SleepyJob < ApplicationJob
  queue_as :default

  def perform(*args)
    sleep rand(10)
  end
end
